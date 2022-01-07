
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long UINT ;


 scalar_t__ Z_OK ;
 scalar_t__ compress2 (void*,unsigned long*,void*,unsigned long,int) ;

UINT CompressEx(void *dst, UINT dst_size, void *src, UINT src_size, UINT level)
{
 unsigned long dst_size_long = dst_size;

 if (dst == ((void*)0) || dst_size_long == 0 || src == ((void*)0))
 {
  return 0;
 }

 if (compress2(dst, &dst_size_long, src, src_size, (int)level) != Z_OK)
 {
  return 0;
 }

 return dst_size_long;
}
