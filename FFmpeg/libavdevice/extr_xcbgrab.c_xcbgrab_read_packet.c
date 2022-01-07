
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ same_screen; } ;
typedef TYPE_2__ xcb_query_pointer_reply_t ;
typedef int xcb_query_pointer_cookie_t ;
typedef TYPE_2__ xcb_get_geometry_reply_t ;
typedef int xcb_get_geometry_cookie_t ;
struct TYPE_22__ {scalar_t__ draw_mouse; scalar_t__ has_shm; scalar_t__ show_region; scalar_t__ follow_mouse; int conn; TYPE_1__* screen; } ;
typedef TYPE_4__ XCBGrabContext ;
struct TYPE_23__ {TYPE_4__* priv_data; } ;
struct TYPE_20__ {int root; } ;
typedef int AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int free (TYPE_2__*) ;
 int wait_frame (TYPE_5__*,int *) ;
 int xcb_get_geometry (int ,int ) ;
 TYPE_2__* xcb_get_geometry_reply (int ,int ,int *) ;
 int xcb_query_pointer (int ,int ) ;
 TYPE_2__* xcb_query_pointer_reply (int ,int ,int *) ;
 int xcbgrab_draw_mouse (TYPE_5__*,int *,TYPE_2__*,TYPE_2__*) ;
 int xcbgrab_frame (TYPE_5__*,int *) ;
 scalar_t__ xcbgrab_frame_shm (TYPE_5__*,int *) ;
 int xcbgrab_reposition (TYPE_5__*,TYPE_2__*,TYPE_2__*) ;
 int xcbgrab_update_region (TYPE_5__*) ;

__attribute__((used)) static int xcbgrab_read_packet(AVFormatContext *s, AVPacket *pkt)
{
    XCBGrabContext *c = s->priv_data;
    xcb_query_pointer_cookie_t pc;
    xcb_get_geometry_cookie_t gc;
    xcb_query_pointer_reply_t *p = ((void*)0);
    xcb_get_geometry_reply_t *geo = ((void*)0);
    int ret = 0;

    wait_frame(s, pkt);

    if (c->follow_mouse || c->draw_mouse) {
        pc = xcb_query_pointer(c->conn, c->screen->root);
        gc = xcb_get_geometry(c->conn, c->screen->root);
        p = xcb_query_pointer_reply(c->conn, pc, ((void*)0));
        geo = xcb_get_geometry_reply(c->conn, gc, ((void*)0));
    }

    if (c->follow_mouse && p->same_screen)
        xcbgrab_reposition(s, p, geo);

    if (c->show_region)
        xcbgrab_update_region(s);





    if (!c->has_shm)
        ret = xcbgrab_frame(s, pkt);






    free(p);
    free(geo);

    return ret;
}
