
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int r ;
typedef int U32 ;


 int memcpy (int *,void const*,int) ;

__attribute__((used)) static U32 ZSTD_read32(const void* p) { U32 r; memcpy(&r, p, sizeof(r)); return r; }
