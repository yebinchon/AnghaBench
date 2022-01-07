
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ip_str ;
typedef int dtstr ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_9__ {int Size; int * Buf; } ;
struct TYPE_8__ {scalar_t__ num_value; int type; int JsonHint_IsIP; int JsonHint_IsDateTime; TYPE_1__** values; int name; int JsonHint_IsBool; } ;
struct TYPE_7__ {char* Str; char* UniStr; } ;
typedef int PACK ;
typedef int JSON_ARRAY ;
typedef int IP ;
typedef TYPE_2__ ELEMENT ;
typedef TYPE_3__ BUF ;


 int FreeBuf (TYPE_3__*) ;
 int IPToStr (char*,int,int *) ;
 int InStr (int ,char*) ;
 int JsonArrayAddBool (int *,int ) ;
 int JsonArrayAddData (int *,int *,int ) ;
 int JsonArrayAddNumber (int *,int ) ;
 int JsonArrayAddStr (int *,char*) ;
 int JsonArrayAddUniStr (int *,char*) ;
 int PackGetBoolEx (int *,int ,scalar_t__) ;
 TYPE_3__* PackGetBufEx (int *,int ,scalar_t__) ;
 int PackGetInt64Ex (int *,int ,scalar_t__) ;
 int PackGetIntEx (int *,int ,scalar_t__) ;
 int PackGetIpEx (int *,int ,int *,scalar_t__) ;
 int SystemTime64ToJsonStr (char*,int,int ) ;






void PackArrayElementToJsonArray(JSON_ARRAY *ja, PACK *p, ELEMENT *e, UINT index)
{
 if (ja == ((void*)0) || p == ((void*)0) || e == ((void*)0) || index >= e->num_value)
 {
  return;
 }

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
     JsonArrayAddStr(ja, ip_str);
    }
   }
  }
  else if (e->JsonHint_IsBool)
  {
   JsonArrayAddBool(ja, PackGetBoolEx(p, e->name, index));
  }
  else
  {
   JsonArrayAddNumber(ja, PackGetIntEx(p, e->name, index));
  }
  break;
 case 130:
  if (e->JsonHint_IsIP == 0)
  {
   if (e->JsonHint_IsDateTime == 0)
   {
    JsonArrayAddNumber(ja, PackGetInt64Ex(p, e->name, index));
   }
   else
   {
    char dtstr[64];

    SystemTime64ToJsonStr(dtstr, sizeof(dtstr), PackGetInt64Ex(p, e->name, index));
    JsonArrayAddStr(ja, dtstr);
   }
  }
  break;
 case 132:
  if (e->JsonHint_IsIP == 0)
  {
   BUF *buf = PackGetBufEx(p, e->name, index);
   if (buf != ((void*)0))
   {
    JsonArrayAddData(ja, buf->Buf, buf->Size);
    FreeBuf(buf);
   }
   else
   {
    UCHAR zero = 0;
    JsonArrayAddData(ja, &zero, 0);
   }
  }
  break;
 case 129:
  if (e->JsonHint_IsIP == 0)
  {
   if (e->values[index] != ((void*)0))
   {
    JsonArrayAddStr(ja, e->values[index]->Str);
   }
   else
   {
    JsonArrayAddStr(ja, "");
   }
  }
  break;
 case 128:
  if (e->JsonHint_IsIP == 0)
  {
   if (e->values[index] != ((void*)0))
   {
    JsonArrayAddUniStr(ja, e->values[index]->UniStr);
   }
   else
   {
    JsonArrayAddUniStr(ja, L"");
   }
  }
  break;
 }
}
