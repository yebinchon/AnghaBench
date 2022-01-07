
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {int ServerName; int Path; } ;
typedef TYPE_1__ LOG_FILE ;


 int StrCmpi (int ,int ) ;

int CmpLogFile(void *p1, void *p2)
{
 LOG_FILE *f1, *f2;
 UINT i;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 f1 = *(LOG_FILE **)p1;
 f2 = *(LOG_FILE **)p2;
 if (f1 == ((void*)0) || f2 == ((void*)0))
 {
  return 0;
 }

 i = StrCmpi(f1->Path, f2->Path);
 if (i != 0)
 {
  return i;
 }

 return StrCmpi(f1->ServerName, f2->ServerName);
}
