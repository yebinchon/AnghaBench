
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {int (* Scan ) (int) ;} ;


 TYPE_1__* CurPer ;
 int YabauseGetTicks () ;
 int printf (char*,...) ;
 int stub1 (int) ;
 int stub2 (int) ;

int TestInput(const char *msg, u32 flags, u64 timeout, u64 tickfreq)
{
 u64 time1, time2;
 u32 id;
 u32 startid;

 startid = CurPer->Scan(flags);
 printf("%s Timeout in %d seconds\n", msg, timeout);
 time1 = YabauseGetTicks();
 time2 = YabauseGetTicks();
 timeout = timeout * tickfreq;
 while ((id = CurPer->Scan(flags)) == 0 && (time2-time1) < timeout)
  time2 = YabauseGetTicks();

 if (startid != 0)
 {
  printf("Data present before press. result code: %08X", startid);
  return 0;
 }
 if (id != 0)
 {
    printf("result code: %08X", id);
  return 1;
 }
 else
  return 0;
}
