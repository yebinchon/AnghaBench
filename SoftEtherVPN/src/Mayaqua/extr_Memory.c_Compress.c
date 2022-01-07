
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int CompressEx (void*,int ,void*,int ,int ) ;
 int Z_DEFAULT_COMPRESSION ;

UINT Compress(void *dst, UINT dst_size, void *src, UINT src_size)
{
 return CompressEx(dst, dst_size, src, src_size, Z_DEFAULT_COMPRESSION);
}
