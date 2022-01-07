
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlib_trans_stream {int z; scalar_t__ inited; } ;


 int free (struct zlib_trans_stream*) ;
 int inflateEnd (int *) ;

__attribute__((used)) static void zlib_inflate_stream_free(void *data)
{
   struct zlib_trans_stream *z = (struct zlib_trans_stream *) data;
   if (!z)
      return;
   if (z->inited)
      inflateEnd(&z->z);
   if (z)
      free(z);
}
