
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * samples; } ;
typedef TYPE_1__ rwav_t ;
struct TYPE_6__ {size_t size; int step; int const* data; TYPE_1__* out; } ;
typedef TYPE_2__ rwav_iterator_t ;


 int ITER_BEGIN ;

void rwav_init(rwav_iterator_t* iter, rwav_t* out, const void* buf, size_t size)
{
   iter->out = out;
   iter->data = (const uint8_t*)buf;
   iter->size = size;
   iter->step = ITER_BEGIN;

   out->samples = ((void*)0);
}
