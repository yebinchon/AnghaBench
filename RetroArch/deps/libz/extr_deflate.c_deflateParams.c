
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_8__ {size_t level; int strategy; scalar_t__ pending; int max_chain_length; int nice_match; int good_match; int max_lazy_match; } ;
typedef TYPE_2__ deflate_state ;
typedef int compress_func ;
struct TYPE_9__ {int max_chain; int nice_length; int good_length; int max_lazy; int func; } ;
struct TYPE_7__ {scalar_t__ total_in; struct TYPE_7__* state; } ;


 int Z_BLOCK ;
 int Z_BUF_ERROR ;
 int Z_DEFAULT_COMPRESSION ;
 int Z_FIXED ;
 TYPE_1__* Z_NULL ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 TYPE_5__* configuration_table ;
 int deflate (TYPE_1__*,int ) ;

int deflateParams(z_streamp strm, int level, int strategy)
{
   deflate_state *s;
   compress_func func;
   int err = Z_OK;

   if (strm == Z_NULL || strm->state == Z_NULL) return Z_STREAM_ERROR;
   s = (deflate_state*)strm->state;




   if (level == Z_DEFAULT_COMPRESSION) level = 6;

   if (level < 0 || level > 9 || strategy < 0 || strategy > Z_FIXED) {
      return Z_STREAM_ERROR;
   }
   func = configuration_table[s->level].func;

   if ((strategy != s->strategy || func != configuration_table[level].func) &&
         strm->total_in != 0) {

      err = deflate(strm, Z_BLOCK);
      if (err == Z_BUF_ERROR && s->pending == 0)
         err = Z_OK;
   }
   if (s->level != level) {
      s->level = level;
      s->max_lazy_match = configuration_table[level].max_lazy;
      s->good_match = configuration_table[level].good_length;
      s->nice_match = configuration_table[level].nice_length;
      s->max_chain_length = configuration_table[level].max_chain;
   }
   s->strategy = strategy;
   return err;
}
