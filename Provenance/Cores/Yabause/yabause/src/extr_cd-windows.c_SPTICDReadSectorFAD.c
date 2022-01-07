
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int enable_read_ahead; scalar_t__ FAD; int error_flag; scalar_t__ num_sectors_read; int data; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int SwitchToThread () ;
 TYPE_1__ cd_buf ;
 int cd_cs ;
 int memcpy (void*,int ,int) ;

int SPTICDReadSectorFAD(u32 FAD, void *buffer) {
 for (;;)
 {
  EnterCriticalSection(&cd_cs);
  if ((volatile)cd_buf.enable_read_ahead == 0)
  {
   if (cd_buf.FAD == FAD)
   {
    int ret;
    memcpy(buffer, cd_buf.data, 2352);
    ret = cd_buf.error_flag;
    LeaveCriticalSection(&cd_cs);
    return ret;
   }
   else
   {
    cd_buf.FAD = FAD;
    cd_buf.num_sectors_read = 0;
    cd_buf.error_flag = 0;
    cd_buf.enable_read_ahead = 1;
   }
  }
  LeaveCriticalSection(&cd_cs);
  SwitchToThread();
 }
}
