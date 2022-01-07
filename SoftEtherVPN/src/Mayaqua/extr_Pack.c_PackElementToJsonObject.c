
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int name ;
typedef int ip_str ;
typedef int dtstr ;
typedef size_t UINT ;
typedef int UCHAR ;
struct TYPE_10__ {int Size; int * Buf; } ;
struct TYPE_9__ {int type; int JsonHint_IsIP; int JsonHint_IsDateTime; TYPE_1__** values; int name; int JsonHint_IsBool; } ;
struct TYPE_8__ {char* Str; char* UniStr; } ;
typedef int PACK ;
typedef int JSON_OBJECT ;
typedef int IP ;
typedef TYPE_2__ ELEMENT ;
typedef TYPE_3__ BUF ;


 char* DetermineJsonSuffixForPackElement (TYPE_2__*) ;
 int FreeBuf (TYPE_3__*) ;
 int IPToStr (char*,int,int *) ;
 int InStr (int ,char*) ;
 int JsonSetBool (int *,char*,int ) ;
 int JsonSetData (int *,char*,int *,int ) ;
 int JsonSetNumber (int *,char*,int ) ;
 int JsonSetStr (int *,char*,char*) ;
 int JsonSetUniStr (int *,char*,char*) ;
 int MAX_PATH ;
 int PackGetBoolEx (int *,int ,size_t) ;
 TYPE_3__* PackGetBufEx (int *,int ,size_t) ;
 int PackGetInt64Ex (int *,int ,size_t) ;
 int PackGetIntEx (int *,int ,size_t) ;
 int PackGetIpEx (int *,int ,int *,size_t) ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,int ) ;
 int SystemTime64ToJsonStr (char*,int,int ) ;






void PackElementToJsonObject(JSON_OBJECT *o, PACK *p, ELEMENT *e, UINT index)
{
 char *suffix;
 char name[MAX_PATH];
 if (o == ((void*)0) || p == ((void*)0) || e == ((void*)0))
 {
  return;
 }

 suffix = DetermineJsonSuffixForPackElement(e);

 if (suffix == ((void*)0))
 {
  return;
 }

 StrCpy(name, sizeof(name), e->name);
 StrCat(name, sizeof(name), suffix);

 switch (e->type)
 {
 case 131:
  if (e->JsonHint_IsIP)
  {
   if (InStr(e->name, "@") == 0)
   {
    IP ip;
    if (PackGetIpEx(p, e->name, &ip, index))
    {
     char ip_str[64];
     IPToStr(ip_str, sizeof(ip_str), &ip);
     JsonSetStr(o, name, ip_str);
    }
   }
  }
  else if (e->JsonHint_IsBool)
  {
   JsonSetBool(o, name, PackGetBoolEx(p, e->name, index));
  }
  else
  {
   JsonSetNumber(o, name, PackGetIntEx(p, e->name, index));
  }
  break;
 case 130:
  if (e->JsonHint_IsIP == 0)
  {
   if (e->JsonHint_IsDateTime == 0)
   {
    JsonSetNumber(o, name, PackGetInt64Ex(p, e->name, index));
   }
   else
   {
    char dtstr[64];

    SystemTime64ToJsonStr(dtstr, sizeof(dtstr), PackGetInt64Ex(p, e->name, index));
    JsonSetStr(o, name, dtstr);
   }
  }
  break;
 case 132:
  if (e->JsonHint_IsIP == 0)
  {
   BUF *buf = PackGetBufEx(p, e->name, index);
   if (buf != ((void*)0))
   {
    JsonSetData(o, name, buf->Buf, buf->Size);
    FreeBuf(buf);
   }
   else
   {
    UCHAR zero = 0;
    JsonSetData(o, name, &zero, 0);
   }
  }
  break;
 case 129:
  if (e->JsonHint_IsIP == 0)
  {
   if (e->values[index] != ((void*)0))
   {
    JsonSetStr(o, name, e->values[index]->Str);
   }
   else
   {
    JsonSetStr(o, name, "");
   }
  }
  break;
 case 128:
  if (e->JsonHint_IsIP == 0)
  {
   if (e->values[index] != ((void*)0))
   {
    JsonSetUniStr(o, name, e->values[index]->UniStr);
   }
   else
   {
    JsonSetUniStr(o, name, L"");
   }
  }
  break;
 }
}
