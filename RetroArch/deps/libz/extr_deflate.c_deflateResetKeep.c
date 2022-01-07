
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_9__ {int wrap; int last_flush; int status; int pending_buf; int pending_out; scalar_t__ pending; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_8__ {int adler; struct TYPE_8__* state; int data_type; struct TYPE_8__* msg; scalar_t__ total_out; scalar_t__ total_in; struct TYPE_8__* zfree; struct TYPE_8__* zalloc; } ;


 int BUSY_STATE ;
 int INIT_STATE ;
 int Z_NO_FLUSH ;
 TYPE_1__* Z_NULL ;
 int Z_OK ;
 int Z_STREAM_ERROR ;
 int Z_UNKNOWN ;
 int _tr_init (TYPE_2__*) ;
 int adler32 (long,TYPE_1__*,int ) ;
 int crc32 (long,TYPE_1__*,int ) ;

int deflateResetKeep (z_streamp strm)
{
   deflate_state *s;

   if (strm == Z_NULL || strm->state == Z_NULL ||
         strm->zalloc == Z_NULL || strm->zfree == Z_NULL) {
      return Z_STREAM_ERROR;
   }

   strm->total_in = strm->total_out = 0;
   strm->msg = Z_NULL;
   strm->data_type = Z_UNKNOWN;

   s = (deflate_state *)strm->state;
   s->pending = 0;
   s->pending_out = s->pending_buf;

   if (s->wrap < 0) {
      s->wrap = -s->wrap;
   }
   s->status = s->wrap ? INIT_STATE : BUSY_STATE;
   strm->adler =



      adler32(0L, Z_NULL, 0);
   s->last_flush = Z_NO_FLUSH;

   _tr_init(s);

   return Z_OK;
}
