
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int COMPARE_RET (int ,int ) ;

int CompareInt(void *p1, void *p2)
{
 UINT *v1, *v2;
 if (p1 == ((void*)0) || p2 == ((void*)0))
 {
  return 0;
 }

 v1 = *((UINT **)p1);
 v2 = *((UINT **)p2);
 if (v1 == ((void*)0) || v2 == ((void*)0))
 {
  return 0;
 }

 return COMPARE_RET(*v1, *v2);
}
