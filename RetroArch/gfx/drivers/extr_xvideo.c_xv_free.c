
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int shmid; int shmaddr; } ;
struct TYPE_6__ {scalar_t__ font; TYPE_1__* font_driver; struct TYPE_6__* vtable; struct TYPE_6__* utable; struct TYPE_6__* ytable; int image; TYPE_4__ shminfo; } ;
typedef TYPE_2__ xv_t ;
struct TYPE_5__ {int (* free ) (scalar_t__) ;} ;


 int IPC_RMID ;
 int XCloseDisplay (int ) ;
 int XFree (int ) ;
 int XShmDetach (int ,TYPE_4__*) ;
 int free (TYPE_2__*) ;
 int g_x11_dpy ;
 int shmctl (int ,int ,int *) ;
 int shmdt (int ) ;
 int stub1 (scalar_t__) ;
 int x11_colormap_destroy () ;
 int x11_input_ctx_destroy () ;
 int x11_window_destroy (int) ;

__attribute__((used)) static void xv_free(void *data)
{
   xv_t *xv = (xv_t*)data;

   if (!xv)
      return;

   x11_input_ctx_destroy();

   XShmDetach(g_x11_dpy, &xv->shminfo);
   shmdt(xv->shminfo.shmaddr);
   shmctl(xv->shminfo.shmid, IPC_RMID, ((void*)0));
   XFree(xv->image);

   x11_window_destroy(1);
   x11_colormap_destroy();

   XCloseDisplay(g_x11_dpy);

   free(xv->ytable);
   free(xv->utable);
   free(xv->vtable);

   if (xv->font)
      xv->font_driver->free(xv->font);

   free(xv);
}
