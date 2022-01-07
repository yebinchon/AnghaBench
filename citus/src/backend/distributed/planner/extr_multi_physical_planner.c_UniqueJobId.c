
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint32 ;


 scalar_t__ EnableUniqueJobIds ;
 int GetLocalGroupId () ;
 int MyProcPid ;
 scalar_t__ RecoveryInProgress () ;

uint64
UniqueJobId(void)
{
 static uint32 jobIdCounter = 0;

 uint64 jobId = 0;
 uint64 jobIdNumber = 0;
 uint64 processId = 0;
 uint64 localGroupId = 0;

 jobIdCounter++;

 if (EnableUniqueJobIds)
 {




  localGroupId = GetLocalGroupId() & 0xFF;
  jobId = jobId | (localGroupId << 48);







  processId = MyProcPid & 0xFFFFFF;
  jobId = jobId | (processId << 24);





  if (RecoveryInProgress())
  {
   jobId = jobId | (1 << 23);
  }
 }





 jobIdNumber = jobIdCounter & 0x1FFFFFF;
 jobId = jobId | jobIdNumber;

 return jobId;
}
