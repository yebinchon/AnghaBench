
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ display; scalar_t__ gc; TYPE_4__* yuv_image; int yuv_shminfo; } ;
typedef TYPE_1__ XVContext ;
struct TYPE_7__ {int data; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int XCloseDisplay (scalar_t__) ;
 int XFree (TYPE_4__*) ;
 int XFreeGC (scalar_t__,scalar_t__) ;
 int XShmDetach (scalar_t__,int *) ;
 int shmdt (int ) ;

__attribute__((used)) static int xv_write_trailer(AVFormatContext *s)
{
    XVContext *xv = s->priv_data;
    if (xv->display) {
        XShmDetach(xv->display, &xv->yuv_shminfo);
        if (xv->yuv_image)
            shmdt(xv->yuv_image->data);
        XFree(xv->yuv_image);
        if (xv->gc)
            XFreeGC(xv->display, xv->gc);
        XCloseDisplay(xv->display);
    }
    return 0;
}
