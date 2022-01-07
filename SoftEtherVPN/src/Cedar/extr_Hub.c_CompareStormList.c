
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {int StrictMode; int MacAddress; int SrcIp; int DestIp; } ;
typedef TYPE_1__ STORM ;


 scalar_t__ Cmp (int ,int ,int) ;
 void* CmpIpAddr (int *,int *) ;

int CompareStormList(void *p1, void *p2)
{
 STORM *s1, *s2;
 UINT r;

 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }
 s1 = *(STORM **)p1;
 s2 = *(STORM **)p2;
 if (s1 == ((void*)0) || s2 == ((void*)0))
 {
  return 0;
 }
 if (s1->StrictMode == 0 && s2->StrictMode == 0)
 {

  r = CmpIpAddr(&s1->DestIp, &s2->DestIp);
  if (r != 0)
  {
   return r;
  }
  r = CmpIpAddr(&s1->SrcIp, &s2->SrcIp);
  if (r != 0)
  {
   return r;
  }
 }
 else
 {

  int r1, r2;
  r1 = CmpIpAddr(&s1->DestIp, &s2->DestIp);
  r2 = CmpIpAddr(&s1->SrcIp, &s2->SrcIp);
  if (r1 == 0 || r2 == 0)
  {

  }
  else
  {

   if (r1 != 0)
   {
    return r1;
   }

   if (r2 != 0)
   {
    return r2;
   }
  }
 }
 r = Cmp(s1->MacAddress, s2->MacAddress, 6);
 return r;
}
