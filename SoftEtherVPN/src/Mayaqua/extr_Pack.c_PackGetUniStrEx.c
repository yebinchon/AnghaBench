
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef scalar_t__ UINT ;
typedef int PACK ;
typedef int ELEMENT ;


 int * GetElement (int *,char*,int ) ;
 int GetUniStrValue (int *,scalar_t__) ;
 int UniStrCpy (scalar_t__*,scalar_t__,int ) ;
 int VALUE_UNISTR ;

bool PackGetUniStrEx(PACK *p, char *name, wchar_t *unistr, UINT size, UINT index)
{
 ELEMENT *e;

 if (p == ((void*)0) || name == ((void*)0) || unistr == ((void*)0) || size == 0)
 {
  return 0;
 }

 unistr[0] = 0;

 e = GetElement(p, name, VALUE_UNISTR);
 if (e == ((void*)0))
 {
  return 0;
 }
 UniStrCpy(unistr, size, GetUniStrValue(e, index));
 return 1;
}
