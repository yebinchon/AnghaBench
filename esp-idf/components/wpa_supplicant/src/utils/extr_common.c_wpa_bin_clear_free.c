
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (void*) ;
 int os_memset (void*,int ,size_t) ;

void wpa_bin_clear_free(void *bin, size_t len)
{
 if (bin) {
  os_memset(bin, 0, len);
  os_free(bin);
 }
}
