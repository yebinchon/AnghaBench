
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* class_name; } ;
typedef TYPE_1__ AVClass ;



const char *av_default_item_name(void *ptr)
{
    return (*(AVClass **) ptr)->class_name;
}
