
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Util_fclose (int *,int ) ;
 int ** h_fp ;
 int * h_tmpbuf ;

void Devices_H_CloseAll(void)
{
 int i;
 for (i = 0; i < 8; i++)
  if (h_fp[i] != ((void*)0)) {
   Util_fclose(h_fp[i], h_tmpbuf[i]);
   h_fp[i] = ((void*)0);
  }
}
