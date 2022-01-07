
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int qboolean ;
typedef int fd_set ;


 int ConnectionNumber (int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int QueuedAlready ;
 scalar_t__ XEventsQueued (int *,int ) ;
 int XFlush (int *) ;
 int XPending (int *) ;
 int assert (int ) ;
 int * dpy ;
 int qfalse ;
 int qtrue ;
 int select (int,int *,int *,int *,struct timeval*) ;

__attribute__((used)) static qboolean X11_PendingInput(void) {

  assert(dpy != ((void*)0));



  XFlush( dpy );
  if ( XEventsQueued( dpy, QueuedAlready) )
  {
    return qtrue;
  }


  {
    static struct timeval zero_time;
    int x11_fd;
    fd_set fdset;

    x11_fd = ConnectionNumber( dpy );
    FD_ZERO(&fdset);
    FD_SET(x11_fd, &fdset);
    if ( select(x11_fd+1, &fdset, ((void*)0), ((void*)0), &zero_time) == 1 )
    {
      return(XPending(dpy));
    }
  }


  return qfalse;
}
