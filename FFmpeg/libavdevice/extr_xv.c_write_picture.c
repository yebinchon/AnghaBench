
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int height; int width; int pitches; int * offsets; int * data; } ;
typedef TYPE_3__ XvImage ;
struct TYPE_14__ {scalar_t__ wm_delete_message; int image_format; int display; int window_id; TYPE_3__* yuv_image; } ;
typedef TYPE_4__ XVContext ;
struct TYPE_11__ {scalar_t__* l; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__ xclient; } ;
typedef TYPE_5__ XEvent ;
struct TYPE_16__ {TYPE_4__* priv_data; } ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 scalar_t__ ClientMessage ;
 int EPIPE ;
 int XNextEvent (int ,TYPE_5__*) ;
 scalar_t__ XPending (int ) ;
 int av_image_copy (int **,int ,int const**,int*,int ,int ,int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int xv_repaint (TYPE_6__*) ;

__attribute__((used)) static int write_picture(AVFormatContext *s, uint8_t *input_data[4],
                         int linesize[4])
{
    XVContext *xv = s->priv_data;
    XvImage *img = xv->yuv_image;
    uint8_t *data[3] = {
        img->data + img->offsets[0],
        img->data + img->offsets[1],
        img->data + img->offsets[2]
    };


    if (!xv->window_id) {
        XEvent event;
        while (XPending(xv->display)) {
            XNextEvent(xv->display, &event);
            if (event.type == ClientMessage && event.xclient.data.l[0] == xv->wm_delete_message) {
                av_log(xv, AV_LOG_DEBUG, "Window close event.\n");
                return AVERROR(EPIPE);
            }
        }
    }

    av_image_copy(data, img->pitches, (const uint8_t **)input_data, linesize,
                  xv->image_format, img->width, img->height);
    return xv_repaint(s);
}
