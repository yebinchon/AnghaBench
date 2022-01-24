#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  pitches; int /*<<< orphan*/ * offsets; int /*<<< orphan*/ * data; } ;
typedef  TYPE_3__ XvImage ;
struct TYPE_14__ {scalar_t__ wm_delete_message; int /*<<< orphan*/  image_format; int /*<<< orphan*/  display; int /*<<< orphan*/  window_id; TYPE_3__* yuv_image; } ;
typedef  TYPE_4__ XVContext ;
struct TYPE_11__ {scalar_t__* l; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_2__ xclient; } ;
typedef  TYPE_5__ XEvent ;
struct TYPE_16__ {TYPE_4__* priv_data; } ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 scalar_t__ ClientMessage ; 
 int /*<<< orphan*/  EPIPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s, uint8_t *input_data[4],
                         int linesize[4])
{
    XVContext *xv = s->priv_data;
    XvImage *img = xv->yuv_image;
    uint8_t *data[3] = {
        img->data + img->offsets[0],
        img->data + img->offsets[1],
        img->data + img->offsets[2]
    };

    /* Check messages. Window might get closed. */
    if (!xv->window_id) {
        XEvent event;
        while (FUNC2(xv->display)) {
            FUNC1(xv->display, &event);
            if (event.type == ClientMessage && event.xclient.data.l[0] == xv->wm_delete_message) {
                FUNC4(xv, AV_LOG_DEBUG, "Window close event.\n");
                return FUNC0(EPIPE);
            }
        }
    }

    FUNC3(data, img->pitches, (const uint8_t **)input_data, linesize,
                  xv->image_format, img->width, img->height);
    return FUNC5(s);
}