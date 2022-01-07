
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hb_handle_t ;


 int global_verbosity_level ;

void hb_log_level_set(hb_handle_t *h, int level)
{
    global_verbosity_level = level;
}
