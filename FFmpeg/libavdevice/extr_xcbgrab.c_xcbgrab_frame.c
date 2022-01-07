
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int xcb_get_image_reply_t ;
typedef int xcb_get_image_cookie_t ;
struct TYPE_12__ {int major_code; int minor_code; int resource_id; int sequence; int error_code; int response_type; } ;
typedef TYPE_2__ xcb_generic_error_t ;
typedef int xcb_drawable_t ;
typedef int uint8_t ;
struct TYPE_13__ {int conn; int height; int width; int y; int x; TYPE_1__* screen; } ;
typedef TYPE_3__ XCBGrabContext ;
struct TYPE_15__ {TYPE_3__* priv_data; } ;
struct TYPE_14__ {int data; } ;
struct TYPE_11__ {int root; } ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EACCES ;
 int EAGAIN ;
 int XCB_IMAGE_FORMAT_Z_PIXMAP ;
 int av_log (TYPE_5__*,int ,char*,int ,int ,int ,int ,int ,int ) ;
 int av_new_packet (TYPE_4__*,int) ;
 int free (int *) ;
 int memcpy (int ,int *,int) ;
 int xcb_get_image (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int * xcb_get_image_data (int *) ;
 int xcb_get_image_data_length (int *) ;
 int * xcb_get_image_reply (int ,int ,TYPE_2__**) ;

__attribute__((used)) static int xcbgrab_frame(AVFormatContext *s, AVPacket *pkt)
{
    XCBGrabContext *c = s->priv_data;
    xcb_get_image_cookie_t iq;
    xcb_get_image_reply_t *img;
    xcb_drawable_t drawable = c->screen->root;
    xcb_generic_error_t *e = ((void*)0);
    uint8_t *data;
    int length, ret;

    iq = xcb_get_image(c->conn, XCB_IMAGE_FORMAT_Z_PIXMAP, drawable,
                        c->x, c->y, c->width, c->height, ~0);

    img = xcb_get_image_reply(c->conn, iq, &e);

    if (e) {
        av_log(s, AV_LOG_ERROR,
               "Cannot get the image data "
               "event_error: response_type:%u error_code:%u "
               "sequence:%u resource_id:%u minor_code:%u major_code:%u.\n",
               e->response_type, e->error_code,
               e->sequence, e->resource_id, e->minor_code, e->major_code);
        return AVERROR(EACCES);
    }

    if (!img)
        return AVERROR(EAGAIN);

    data = xcb_get_image_data(img);
    length = xcb_get_image_data_length(img);

    ret = av_new_packet(pkt, length);

    if (!ret)
        memcpy(pkt->data, data, length);

    free(img);

    return ret;
}
