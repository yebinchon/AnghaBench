
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_4__ {void* length; void* last; } ;
typedef TYPE_1__ FILTER_T ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void filter_init(FILTER_T *filter, uint32_t length)
{
   memset(filter, 0, sizeof(*filter));
   filter->last = length - 1;
   filter->length = length;
}
