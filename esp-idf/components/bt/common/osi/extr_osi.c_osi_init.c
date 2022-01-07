
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ osi_mutex_global_init () ;

int osi_init(void)
{
    int ret = 0;

    if (osi_mutex_global_init() != 0) {
        ret = -1;
    }

    return ret;
}
