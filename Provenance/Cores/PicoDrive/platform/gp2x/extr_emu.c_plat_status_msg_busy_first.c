
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_screen_ptr ;
 int gp2x_memcpy_all_buffers (int ,int ,int) ;
 int plat_status_msg_busy_next (char const*) ;

void plat_status_msg_busy_first(const char *msg)
{
 gp2x_memcpy_all_buffers(g_screen_ptr, 0, 320*240*2);
 plat_status_msg_busy_next(msg);
}
