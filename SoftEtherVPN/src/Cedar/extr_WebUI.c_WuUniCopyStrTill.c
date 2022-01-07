
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;


 scalar_t__ Malloc (int) ;

__attribute__((used)) static wchar_t *WuUniCopyStrTill(wchar_t *str, wchar_t delimiter, wchar_t **ret){
 UINT num = 0, i;
 wchar_t *next = str;
 wchar_t *ptr = str;


 while(*next)
 {
  if(*next==L'\\')
  {
   next++;
   if(*next == 0)
   {
    break;
   }
  }
  else
  {
   if(*next == delimiter)
   {
    break;
   }
  }
  next++;
  num++;
 }


 *ret = (wchar_t*)Malloc((num+1)*sizeof(wchar_t));
 for(i=0;i<num;i++)
 {
  if(*ptr == L'\\')
  {
   ptr++;
  }
  (*ret)[i] = *ptr;
  ptr++;
 }
 (*ret)[num]=0;


 return *next ? next+1 : next;
}
