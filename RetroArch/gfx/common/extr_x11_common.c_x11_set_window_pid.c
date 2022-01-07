
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int Window ;
typedef int Display ;


 int False ;
 int PropModeReplace ;
 int RARCH_WARN (char*) ;
 int XA_CARDINAL ;
 int XA_STRING ;
 int XA_WM_CLIENT_MACHINE ;
 int XChangeProperty (int *,int ,int ,int ,int,int ,unsigned char*,int) ;
 int XInternAtom (int *,char*,int ) ;
 int _SC_HOST_NAME_MAX ;
 scalar_t__ errno ;
 int free (char*) ;
 int gethostname (char*,long) ;
 int getpid () ;
 scalar_t__ malloc (long) ;
 int strlen (char*) ;
 long sysconf (int ) ;

__attribute__((used)) static void x11_set_window_pid(Display *dpy, Window win)
{
    long scret = 0;
    char *hostname = ((void*)0);
    pid_t pid = getpid();

    XChangeProperty(dpy, win, XInternAtom(dpy, "_NET_WM_PID", False),
        XA_CARDINAL, 32, PropModeReplace, (unsigned char *)&pid, 1);

    errno = 0;
    if ((scret = sysconf(_SC_HOST_NAME_MAX)) == -1 && errno)
        return;
    if ((hostname = (char*)malloc(scret + 1)) == ((void*)0))
        return;

    if (gethostname(hostname, scret + 1) == -1)
        RARCH_WARN("Failed to get hostname.\n");
    else
    {
        XChangeProperty(dpy, win, XA_WM_CLIENT_MACHINE, XA_STRING, 8,
            PropModeReplace, (unsigned char *)hostname, strlen(hostname));
    }
    free(hostname);
}
