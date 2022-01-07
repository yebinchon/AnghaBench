
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int * buff_data; int * buff_end; } ;
typedef TYPE_1__ rpng_t ;



bool rpng_set_buf_ptr(rpng_t *rpng, void *data, size_t len)
{
   if (!rpng || (len < 1))
      return 0;

   rpng->buff_data = (uint8_t*)data;
   rpng->buff_end = rpng->buff_data + (len - 1);

   return 1;
}
