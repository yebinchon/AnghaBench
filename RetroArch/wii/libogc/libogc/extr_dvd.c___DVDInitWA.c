
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __DVDLowWATypeSet (int ,int ) ;
 scalar_t__ __dvd_nextcmdnum ;

__attribute__((used)) static void __DVDInitWA()
{
 __dvd_nextcmdnum = 0;
 __DVDLowWATypeSet(0,0);
}
