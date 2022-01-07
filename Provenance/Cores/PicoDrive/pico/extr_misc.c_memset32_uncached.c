
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset32 (int*,int,int) ;

void memset32_uncached(int *dest, int c, int count) { memset32(dest, c, count); }
