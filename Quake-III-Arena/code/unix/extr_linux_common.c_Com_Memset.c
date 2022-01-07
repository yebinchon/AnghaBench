
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int const,size_t const) ;

void Com_Memset (void* dest, const int val, const size_t count) {
  memset(dest, val, count);
}
