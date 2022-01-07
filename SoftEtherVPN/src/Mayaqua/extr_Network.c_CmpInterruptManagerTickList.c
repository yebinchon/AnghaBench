
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;



int CmpInterruptManagerTickList(void *p1, void *p2)
{
 UINT64 *v1, *v2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }

 v1 = *(UINT64 **)p1;
 v2 = *(UINT64 **)p2;
 if (v1 == ((void*)0) || v2 == ((void*)0))
 {
  return 0;
 }

 if (*v1 > *v2)
 {
  return 1;
 }
 else if (*v1 < *v2)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
