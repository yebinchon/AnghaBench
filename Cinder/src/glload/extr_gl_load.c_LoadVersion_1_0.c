
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LoadCore_Version_1_0 () ;
 scalar_t__ LoadCore_Version_1_0_Comp () ;

__attribute__((used)) static int LoadVersion_1_0()
{
 int numFailed = 0;
 numFailed += LoadCore_Version_1_0();
 numFailed += LoadCore_Version_1_0_Comp();
 return numFailed;
}
