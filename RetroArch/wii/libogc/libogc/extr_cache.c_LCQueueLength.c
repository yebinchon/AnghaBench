
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int _SHIFTR (int ,int,int) ;
 int mfspr (int) ;

u32 LCQueueLength()
{
 u32 hid2 = mfspr(920);
 return _SHIFTR(hid2,4,4);
}
