
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_ClrN ;
 int CPU_regY ;
 int Devices_GetIOCB () ;
 int Log_print (char*) ;
 int Util_fclose (int *,int ) ;
 scalar_t__ devbug ;
 int ** h_fp ;
 size_t h_iocb ;
 int * h_tmpbuf ;

__attribute__((used)) static void Devices_H_Close(void)
{
 if (devbug)
  Log_print("HHCLOS");
 if (!Devices_GetIOCB())
  return;
 if (h_fp[h_iocb] != ((void*)0)) {
  Util_fclose(h_fp[h_iocb], h_tmpbuf[h_iocb]);
  h_fp[h_iocb] = ((void*)0);
 }
 CPU_regY = 1;
 CPU_ClrN;
}
