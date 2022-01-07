
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osi_free (void*) ;

__attribute__((used)) static void btc_gap_adv_point_cleanup(void **buf)
{
    if (((void*)0) == *buf) {
        return;
    }
    osi_free(*buf);
    *buf = ((void*)0);
}
