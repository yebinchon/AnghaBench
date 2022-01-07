
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ UpdateTime; } ;
typedef TYPE_1__ ERASE_FILE ;



int CompareEraseFile(void *p1, void *p2)
{
 ERASE_FILE *f1, *f2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 f1 = *(ERASE_FILE **)p1;
 f2 = *(ERASE_FILE **)p2;
 if (f1 == ((void*)0) || f2 == ((void*)0))
 {
  return 0;
 }
 if (f1->UpdateTime > f2->UpdateTime)
 {
  return 1;
 }
 else if (f1->UpdateTime == f2->UpdateTime)
 {
  return 0;
 }
 else
 {
  return -1;
 }
}
