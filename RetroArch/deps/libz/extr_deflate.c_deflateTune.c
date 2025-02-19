
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_6__ {int good_match; int max_lazy_match; int nice_match; int max_chain_length; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_5__ {struct TYPE_5__* state; } ;


 TYPE_1__* Z_NULL ;
 int Z_OK ;
 int Z_STREAM_ERROR ;

int deflateTune(z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain)
{
   deflate_state *s;

   if (strm == Z_NULL || strm->state == Z_NULL) return Z_STREAM_ERROR;
   s = (deflate_state*)strm->state;
   s->good_match = good_length;
   s->max_lazy_match = max_lazy;
   s->nice_match = nice_length;
   s->max_chain_length = max_chain;
   return Z_OK;
}
