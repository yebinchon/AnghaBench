
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;


 int COMPARE_RET (char,char) ;
 char ToUpper (char) ;

int CmpCaseIgnore(void *p1, void *p2, UINT size)
{
 UINT i;

 if (p1 == ((void*)0) || p2 == ((void*)0) || size == 0)
 {
  return 0;
 }

 for (i = 0;i < size;i++)
 {
  char c1 = (char)(*(((UCHAR *)p1) + i));
  char c2 = (char)(*(((UCHAR *)p2) + i));

  c1 = ToUpper(c1);
  c2 = ToUpper(c2);

  if (c1 != c2)
  {
   return COMPARE_RET(c1, c2);
  }
 }

 return 0;
}
