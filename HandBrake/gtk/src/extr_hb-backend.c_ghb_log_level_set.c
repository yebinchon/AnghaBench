
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int h_live ;
 int h_queue ;
 int h_scan ;
 int hb_log_level_set (int ,int) ;

void
ghb_log_level_set(int level)
{
    hb_log_level_set(h_scan, level);
    hb_log_level_set(h_queue, level);
    hb_log_level_set(h_live, level);
}
