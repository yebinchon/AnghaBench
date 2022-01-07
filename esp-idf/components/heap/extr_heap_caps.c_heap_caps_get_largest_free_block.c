
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {size_t largest_free_block; } ;
typedef TYPE_1__ multi_heap_info_t ;


 int heap_caps_get_info (TYPE_1__*,int ) ;

size_t heap_caps_get_largest_free_block( uint32_t caps )
{
    multi_heap_info_t info;
    heap_caps_get_info(&info, caps);
    return info.largest_free_block;
}
