
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DiInstallClass (char*,int ) ;
 scalar_t__ InstallNDIDevice (char*,char*,int *,int *) ;
 scalar_t__ OK ;
 int Print (char*) ;

void Test()
{
 char *inf = "c:\\windows\\inf\\other\\Neo_TEST.inf";

 if (DiInstallClass(inf, 0) == OK)
 {
  Print("DiInstallClass Ok.");
  if (InstallNDIDevice("Net", "NeoAdapter_TEST", ((void*)0), ((void*)0)) == OK)
  {
   Print("InstallNDIDevice Ok.\n");
  }
  else
  {
   Print("InstallNDIDevice Failed.\n");
  }
 }
 else
 {
  Print("DiInstallClass Failed. ");
 }
}
