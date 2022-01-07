
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int FileNameW; } ;
typedef TYPE_1__ DIRENT ;


 int UniStrCmpi (int ,int ) ;

int CompareDirListByName(void *p1, void *p2)
{
 DIRENT *d1, *d2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 d1 = *(DIRENT **)p1;
 d2 = *(DIRENT **)p2;
 if (d1 == ((void*)0) || d2 == ((void*)0))
 {
  return 0;
 }
 return UniStrCmpi(d1->FileNameW, d2->FileNameW);
}
