
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int plat_status_msg_busy_next (char const*) ;

void plat_status_msg_busy_first(const char *msg)
{
 plat_status_msg_busy_next(msg);
}
