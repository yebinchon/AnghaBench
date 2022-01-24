#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ same_screen; } ;
typedef  TYPE_2__ xcb_query_pointer_reply_t ;
typedef  int /*<<< orphan*/  xcb_query_pointer_cookie_t ;
typedef  TYPE_2__ xcb_get_geometry_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_geometry_cookie_t ;
struct TYPE_22__ {scalar_t__ draw_mouse; scalar_t__ has_shm; scalar_t__ show_region; scalar_t__ follow_mouse; int /*<<< orphan*/  conn; TYPE_1__* screen; } ;
typedef  TYPE_4__ XCBGrabContext ;
struct TYPE_23__ {TYPE_4__* priv_data; } ;
struct TYPE_20__ {int /*<<< orphan*/  root; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s, AVPacket *pkt)
{
    XCBGrabContext *c = s->priv_data;
    xcb_query_pointer_cookie_t pc;
    xcb_get_geometry_cookie_t gc;
    xcb_query_pointer_reply_t *p  = NULL;
    xcb_get_geometry_reply_t *geo = NULL;
    int ret = 0;

    FUNC1(s, pkt);

    if (c->follow_mouse || c->draw_mouse) {
        pc  = FUNC4(c->conn, c->screen->root);
        gc  = FUNC2(c->conn, c->screen->root);
        p   = FUNC5(c->conn, pc, NULL);
        geo = FUNC3(c->conn, gc, NULL);
    }

    if (c->follow_mouse && p->same_screen)
        FUNC9(s, p, geo);

    if (c->show_region)
        FUNC10(s);

#if CONFIG_LIBXCB_SHM
    if (c->has_shm && xcbgrab_frame_shm(s, pkt) < 0)
        c->has_shm = 0;
#endif
    if (!c->has_shm)
        ret = FUNC7(s, pkt);

#if CONFIG_LIBXCB_XFIXES
    if (ret >= 0 && c->draw_mouse && p->same_screen)
        xcbgrab_draw_mouse(s, pkt, p, geo);
#endif

    FUNC0(p);
    FUNC0(geo);

    return ret;
}