
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ** h_fp ;

int Devices_H_CountOpen(void)
{
 int r = 0;
 int i;
 for (i = 0; i < 8; i++)
  if (h_fp[i] != ((void*)0))
   r++;
 return r;
}
