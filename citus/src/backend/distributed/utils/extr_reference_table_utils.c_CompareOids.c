
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;



int
CompareOids(const void *leftElement, const void *rightElement)
{
 Oid *leftId = (Oid *) leftElement;
 Oid *rightId = (Oid *) rightElement;

 if (*leftId > *rightId)
 {
  return 1;
 }
 else if (*leftId < *rightId)
 {
  return -1;
 }
 else
 {
  return 0;
 }
}
