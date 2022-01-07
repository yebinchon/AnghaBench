
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Id; scalar_t__ DestIP; scalar_t__ SrcIP; scalar_t__ Protocol; } ;
typedef TYPE_1__ IP_COMBINE ;



int CompareIpCombine(void *p1, void *p2)
{
 IP_COMBINE *c1, *c2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 c1 = *(IP_COMBINE **)p1;
 c2 = *(IP_COMBINE **)p2;
 if (c1 == ((void*)0) || c2 == ((void*)0))
 {
  return 0;
 }
 if (c1->Id > c2->Id)
 {
  return 1;
 }
 else if (c1->Id < c2->Id)
 {
  return -1;
 }
 else if (c1->DestIP > c2->DestIP)
 {
  return 1;
 }
 else if (c1->DestIP < c2->DestIP)
 {
  return -1;
 }
 else if (c1->SrcIP > c2->SrcIP)
 {
  return 1;
 }
 else if (c1->SrcIP < c2->SrcIP)
 {
  return -1;
 }
 else if (c1->Protocol > c2->Protocol)
 {
  return 1;
 }
 else if (c1->Protocol < c2->Protocol)
 {
  return -1;
 }
 return 0;
}
