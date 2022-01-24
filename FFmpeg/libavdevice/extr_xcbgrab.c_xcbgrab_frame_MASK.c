#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_get_image_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_image_cookie_t ;
struct TYPE_12__ {int /*<<< orphan*/  major_code; int /*<<< orphan*/  minor_code; int /*<<< orphan*/  resource_id; int /*<<< orphan*/  sequence; int /*<<< orphan*/  error_code; int /*<<< orphan*/  response_type; } ;
typedef  TYPE_2__ xcb_generic_error_t ;
typedef  int /*<<< orphan*/  xcb_drawable_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int /*<<< orphan*/  conn; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; TYPE_1__* screen; } ;
typedef  TYPE_3__ XCBGrabContext ;
struct TYPE_15__ {TYPE_3__* priv_data; } ;
struct TYPE_14__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  XCB_IMAGE_FORMAT_Z_PIXMAP ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, AVPacket *pkt)
{
    XCBGrabContext *c = s->priv_data;
    xcb_get_image_cookie_t iq;
    xcb_get_image_reply_t *img;
    xcb_drawable_t drawable = c->screen->root;
    xcb_generic_error_t *e = NULL;
    uint8_t *data;
    int length, ret;

    iq  = FUNC5(c->conn, XCB_IMAGE_FORMAT_Z_PIXMAP, drawable,
                        c->x, c->y, c->width, c->height, ~0);

    img = FUNC8(c->conn, iq, &e);

    if (e) {
        FUNC1(s, AV_LOG_ERROR,
               "Cannot get the image data "
               "event_error: response_type:%u error_code:%u "
               "sequence:%u resource_id:%u minor_code:%u major_code:%u.\n",
               e->response_type, e->error_code,
               e->sequence, e->resource_id, e->minor_code, e->major_code);
        return FUNC0(EACCES);
    }

    if (!img)
        return FUNC0(EAGAIN);

    data   = FUNC6(img);
    length = FUNC7(img);

    ret = FUNC2(pkt, length);

    if (!ret)
        FUNC4(pkt->data, data, length);

    FUNC3(img);

    return ret;
}