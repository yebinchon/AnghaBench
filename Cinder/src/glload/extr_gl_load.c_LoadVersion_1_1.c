
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LoadCore_Version_1_0 () ;
 scalar_t__ LoadCore_Version_1_0_Comp () ;
 scalar_t__ LoadCore_Version_1_1 () ;
 scalar_t__ LoadCore_Version_1_1_Comp () ;

__attribute__((used)) static int LoadVersion_1_1()
{
 int numFailed = 0;
 numFailed += LoadCore_Version_1_0();
 numFailed += LoadCore_Version_1_0_Comp();
 numFailed += LoadCore_Version_1_1();
 numFailed += LoadCore_Version_1_1_Comp();
 return numFailed;
}
