
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int r ;
typedef int U16 ;


 int memcpy (int *,void const*,int) ;

__attribute__((used)) static U16 ZSTD_read16(const void* p) { U16 r; memcpy(&r, p, sizeof(r)); return r; }
