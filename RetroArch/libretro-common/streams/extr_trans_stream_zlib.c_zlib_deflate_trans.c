
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ avail_in; scalar_t__ avail_out; } ;
typedef TYPE_1__ z_stream ;
typedef scalar_t__ uint32_t ;
struct zlib_trans_stream {int inited; int ex; TYPE_1__ z; } ;
typedef enum trans_stream_error { ____Placeholder_trans_stream_error } trans_stream_error ;


 int TRANS_STREAM_ERROR_AGAIN ;
 int TRANS_STREAM_ERROR_BUFFER_FULL ;
 int TRANS_STREAM_ERROR_NONE ;
 int TRANS_STREAM_ERROR_OTHER ;
 int Z_FINISH ;
 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int deflate (TYPE_1__*,int ) ;
 int deflateEnd (TYPE_1__*) ;
 int deflateInit (TYPE_1__*,int ) ;

__attribute__((used)) static bool zlib_deflate_trans(
   void *data, bool flush,
   uint32_t *rd, uint32_t *wn,
   enum trans_stream_error *error)
{
   int zret = 0;
   bool ret = 0;
   uint32_t pre_avail_in = 0;
   uint32_t pre_avail_out = 0;
   struct zlib_trans_stream *zt = (struct zlib_trans_stream *) data;
   z_stream *z = &zt->z;

   if (!zt->inited)
   {
      deflateInit(z, zt->ex);
      zt->inited = 1;
   }

   pre_avail_in = z->avail_in;
   pre_avail_out = z->avail_out;
   zret = deflate(z, flush ? Z_FINISH : Z_NO_FLUSH);

   if (zret == Z_OK)
   {
      if (error)
         *error = TRANS_STREAM_ERROR_AGAIN;
   }
   else if (zret == Z_STREAM_END)
   {
      if (error)
         *error = TRANS_STREAM_ERROR_NONE;
   }
   else
   {
      if (error)
         *error = TRANS_STREAM_ERROR_OTHER;
      return 0;
   }
   ret = 1;

   if (z->avail_out == 0)
   {

      if (z->avail_in != 0)
      {
         ret = 0;
         if (error)
            *error = TRANS_STREAM_ERROR_BUFFER_FULL;
      }
   }

   *rd = pre_avail_in - z->avail_in;
   *wn = pre_avail_out - z->avail_out;

   if (flush && zret == Z_STREAM_END)
   {
      deflateEnd(z);
      zt->inited = 0;
   }

   return ret;
}
