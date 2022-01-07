
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlib_trans_stream {int z; scalar_t__ inited; } ;


 int deflateEnd (int *) ;
 int free (struct zlib_trans_stream*) ;

__attribute__((used)) static void zlib_deflate_stream_free(void *data)
{
   struct zlib_trans_stream *z = (struct zlib_trans_stream *) data;
   if (!z)
      return;
   if (z->inited)
      deflateEnd(&z->z);
   free(z);
}
