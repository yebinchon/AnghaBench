
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int PACK ;
typedef int ELEMENT ;
typedef int BUF ;


 int AddElement (int *,int *) ;
 scalar_t__ MAX_ELEMENT_NUM ;
 scalar_t__ ReadBufInt (int *) ;
 int * ReadElement (int *) ;

bool ReadPack(BUF *b, PACK *p)
{
 UINT i, num;

 if (b == ((void*)0) || p == ((void*)0))
 {
  return 0;
 }


 num = ReadBufInt(b);
 if (num > MAX_ELEMENT_NUM)
 {

  return 0;
 }


 for (i = 0;i < num;i++)
 {
  ELEMENT *e;
  e = ReadElement(b);
  if (AddElement(p, e) == 0)
  {

   return 0;
  }
 }

 return 1;
}
