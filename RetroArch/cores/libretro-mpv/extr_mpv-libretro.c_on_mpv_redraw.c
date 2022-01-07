
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frame_queue ;

void on_mpv_redraw(void *cb_ctx)
{
 frame_queue++;
}
