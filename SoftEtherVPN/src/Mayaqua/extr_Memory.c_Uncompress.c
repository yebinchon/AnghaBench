
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long UINT ;


 scalar_t__ Z_OK ;
 scalar_t__ uncompress (void*,unsigned long*,void*,unsigned long) ;

UINT Uncompress(void *dst, UINT dst_size, void *src, UINT src_size)
{
 unsigned long dst_size_long = dst_size;

 if (dst == ((void*)0) || dst_size_long == 0 || src == ((void*)0))
 {
  return 0;
 }

 if (uncompress(dst, &dst_size_long, src, src_size) != Z_OK)
 {
  return 0;
 }

 return (UINT)dst_size_long;
}
