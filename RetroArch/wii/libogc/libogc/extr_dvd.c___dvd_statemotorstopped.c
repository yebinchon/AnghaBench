
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DVD_LowWaitCoverClose (int ) ;
 int __dvd_statemotorstoppedcb ;

void __dvd_statemotorstopped()
{
 DVD_LowWaitCoverClose(__dvd_statemotorstoppedcb);
}
