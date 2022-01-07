
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minor_code; int request_code; int error_code; } ;
typedef TYPE_1__ XErrorEvent ;
typedef int Display ;


 int RARCH_WARN (char*,char*,int ,int ) ;
 int XGetErrorText (int *,int ,char*,int) ;

__attribute__((used)) static int x_log_error_handler(Display *dpy, XErrorEvent *event)
{
   char buf[1024];
   XGetErrorText(dpy, event->error_code, buf, sizeof buf);
   RARCH_WARN("[GLX]: X error message: %s, request code: %d, minor code: %d\n",
         buf, event->request_code, event->minor_code);
   return 0;
}
