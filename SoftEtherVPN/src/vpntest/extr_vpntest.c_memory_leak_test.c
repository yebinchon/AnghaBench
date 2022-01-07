
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 char* Malloc (int) ;
 int Print (char*) ;

void memory_leak_test(UINT num, char **arg)
{
 char *a = Malloc(1);

 Print("Hello, I am the great dictator of this kingdom!\n");
 Print("Just now I called Malloc(1) and never free! Ha ha ha !!\n");
}
