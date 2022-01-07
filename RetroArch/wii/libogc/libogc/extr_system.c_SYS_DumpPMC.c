
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mfpmc1 () ;
 int mfpmc2 () ;
 int mfpmc3 () ;
 int mfpmc4 () ;
 int printf (char*,int ,int ,int ,int ) ;

void SYS_DumpPMC()
{
 printf("<%lu load/stores / %lu miss cycles / %lu cycles / %lu instructions>\n",mfpmc1(),mfpmc2(),mfpmc3(),mfpmc4());
}
