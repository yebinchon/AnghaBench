
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int JsonHint_IsIP; int JsonHint_IsDateTime; int JsonHint_IsBool; int name; } ;
typedef TYPE_1__ ELEMENT ;


 int InStr (int ,char*) ;






char *DetermineJsonSuffixForPackElement(ELEMENT *e)
{
 switch (e->type)
 {
 case 131:
  if (e->JsonHint_IsIP)
  {
   if (InStr(e->name, "@") == 0)
   {
    return "_ip";
   }
  }
  else if (e->JsonHint_IsBool)
  {
   return "_bool";
  }
  else
  {
   return "_u32";
  }
  break;
 case 130:
  if (e->JsonHint_IsIP == 0)
  {
   if (e->JsonHint_IsDateTime == 0)
   {
    return "_u64";
   }
   else
   {
    return "_dt";
   }
  }
  break;
 case 132:
  if (e->JsonHint_IsIP == 0)
  {
   return "_bin";
  }
  break;
 case 129:
  if (e->JsonHint_IsIP == 0)
  {
   return "_str";
  }
  break;
 case 128:
  if (e->JsonHint_IsIP == 0)
  {
   return "_utf";
  }
  break;
 }

 return ((void*)0);
}
