
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlib_trans_stream {int ex; } ;


 int MAX_WBITS ;
 scalar_t__ calloc (int,int) ;

__attribute__((used)) static void *zlib_inflate_stream_new(void)
{
   struct zlib_trans_stream *ret = (struct zlib_trans_stream*)calloc(1, sizeof(struct zlib_trans_stream));
   if (!ret)
      return ((void*)0);
   ret->ex = MAX_WBITS;
   return (void *) ret;
}
