
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void const*,size_t const) ;

void Com_Memcpy (void* dest, const void* src, const size_t count) {
  memcpy(dest, src, count);
}
