
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ _SHIFTR (int ,int,int) ;
 int mfspr (int) ;

u32 LCQueueWait(u32 len)
{
 len++;
 while(_SHIFTR(mfspr(920),4,4)>=len);
 return len;
}
