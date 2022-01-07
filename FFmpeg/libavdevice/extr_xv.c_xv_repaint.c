
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_1__ XWindowAttributes ;
struct TYPE_11__ {scalar_t__ window_width; scalar_t__ window_height; scalar_t__ dest_w; scalar_t__ dest_h; scalar_t__ dest_x; scalar_t__ dest_y; int image_height; int image_width; int yuv_image; int gc; int window; int xv_port; int display; } ;
typedef TYPE_2__ XVContext ;
struct TYPE_12__ {scalar_t__ width; scalar_t__ height; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_3__ XRectangle ;
struct TYPE_13__ {TYPE_2__* priv_data; } ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 scalar_t__ Success ;
 int True ;
 int XFillRectangles (int ,int ,int ,TYPE_3__*,int) ;
 int XGetWindowAttributes (int ,int ,TYPE_1__*) ;
 scalar_t__ XvShmPutImage (int ,int ,int ,int ,int ,int ,int ,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int compute_display_area (TYPE_4__*) ;

__attribute__((used)) static int xv_repaint(AVFormatContext *s)
{
    XVContext *xv = s->priv_data;
    XWindowAttributes window_attrs;

    XGetWindowAttributes(xv->display, xv->window, &window_attrs);
    if (window_attrs.width != xv->window_width || window_attrs.height != xv->window_height) {
        XRectangle rect[2];
        xv->dest_w = window_attrs.width;
        xv->dest_h = window_attrs.height;
        compute_display_area(s);
        if (xv->dest_x) {
            rect[0].width = rect[1].width = xv->dest_x;
            rect[0].height = rect[1].height = window_attrs.height;
            rect[0].y = rect[1].y = 0;
            rect[0].x = 0;
            rect[1].x = xv->dest_w + xv->dest_x;
            XFillRectangles(xv->display, xv->window, xv->gc, rect, 2);
        }
        if (xv->dest_y) {
            rect[0].width = rect[1].width = window_attrs.width;
            rect[0].height = rect[1].height = xv->dest_y;
            rect[0].x = rect[1].x = 0;
            rect[0].y = 0;
            rect[1].y = xv->dest_h + xv->dest_y;
            XFillRectangles(xv->display, xv->window, xv->gc, rect, 2);
        }
    }

    if (XvShmPutImage(xv->display, xv->xv_port, xv->window, xv->gc,
                      xv->yuv_image, 0, 0, xv->image_width, xv->image_height,
                      xv->dest_x, xv->dest_y, xv->dest_w, xv->dest_h, True) != Success) {
        av_log(s, AV_LOG_ERROR, "Could not copy image to XV shared memory buffer\n");
        return AVERROR_EXTERNAL;
    }
    return 0;
}
