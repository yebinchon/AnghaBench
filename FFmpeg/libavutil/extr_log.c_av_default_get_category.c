
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int category; } ;
typedef int AVClassCategory ;
typedef TYPE_1__ AVClass ;



AVClassCategory av_default_get_category(void *ptr)
{
    return (*(AVClass **) ptr)->category;
}
