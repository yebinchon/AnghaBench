
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef char wchar_t ;
typedef int tmp2 ;
typedef int name ;
typedef int UINT64 ;
typedef int UINT ;
typedef char UCHAR ;
struct TYPE_16__ {int JsonHint_IsArray; int JsonHint_IsDateTime; } ;
struct TYPE_14__ {int boolean; int number; char* string; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_1__ value; } ;
struct TYPE_13__ {int JsonHint_IsArray; } ;
typedef int PACK ;
typedef TYPE_2__ JSON_VALUE ;
typedef int IP ;
typedef TYPE_3__ ELEMENT ;


 int B64_Decode (char*,char*,int) ;
 char* CopyUtfToUni (char*) ;
 int DateTimeStrRFC3339ToSystemTime64 (char*) ;
 TYPE_11__* ElementNullSafe (TYPE_3__*) ;
 int Free (char*) ;
 scalar_t__ JSON_TYPE_BOOL ;
 scalar_t__ JSON_TYPE_NUMBER ;
 scalar_t__ JSON_TYPE_STRING ;
 int MAKEBOOL (int) ;
 int MAX_PATH ;
 TYPE_3__* PackAddBoolEx (int *,char*,int,int,int) ;
 TYPE_3__* PackAddDataEx (int *,char*,char*,int,int,int) ;
 TYPE_3__* PackAddInt64Ex (int *,char*,int,int,int) ;
 TYPE_3__* PackAddIntEx (int *,char*,int,int,int) ;
 int PackAddIpEx2 (int *,char*,int *,int,int,int) ;
 TYPE_3__* PackAddStrEx (int *,char*,char*,int,int) ;
 TYPE_3__* PackAddUniStrEx (int *,char*,char*,int,int) ;
 int StrLen (char*) ;
 scalar_t__ StrToIP (int *,char*) ;
 int StrToUni (char*,int,char*) ;
 int ToBool (char*) ;
 int ToInt (char*) ;
 int ToInt64 (char*) ;
 int ToStr64 (char*,int) ;
 scalar_t__ TrimEndWith (char*,int,char*,char*) ;
 char* ZeroMalloc (int) ;

bool JsonTryParseValueAddToPack(PACK *p, JSON_VALUE *v, char *v_name, UINT index, UINT total, bool is_single)
{
 char name[MAX_PATH];
 bool ok = 1;
 if (p == ((void*)0) || v == ((void*)0))
 {
  return 0;
 }

 if (TrimEndWith(name, sizeof(name), v_name, "_bool"))
 {
  if (v->type == JSON_TYPE_BOOL)
  {
   ElementNullSafe(PackAddBoolEx(p, name, MAKEBOOL(v->value.boolean), index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_NUMBER)
  {
   ElementNullSafe(PackAddBoolEx(p, name, MAKEBOOL(v->value.number), index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_STRING)
  {
   ElementNullSafe(PackAddBoolEx(p, name, ToBool(v->value.string), index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
 }
 else if (TrimEndWith(name, sizeof(name), v_name, "_u32"))
 {
  if (v->type == JSON_TYPE_BOOL)
  {
   ElementNullSafe(PackAddIntEx(p, name, MAKEBOOL(v->value.boolean), index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_NUMBER)
  {
   ElementNullSafe(PackAddIntEx(p, name, (UINT)v->value.number, index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_STRING)
  {
   ElementNullSafe(PackAddIntEx(p, name, ToInt(v->value.string), index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
 }
 else if (TrimEndWith(name, sizeof(name), v_name, "_u64"))
 {
  if (v->type == JSON_TYPE_BOOL)
  {
   ElementNullSafe(PackAddInt64Ex(p, name, MAKEBOOL(v->value.boolean), index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_NUMBER)
  {
   ElementNullSafe(PackAddInt64Ex(p, name, v->value.number, index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_STRING)
  {
   ElementNullSafe(PackAddInt64Ex(p, name, ToInt64(v->value.string), index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
 }
 else if (TrimEndWith(name, sizeof(name), v_name, "_str"))
 {
  if (v->type == JSON_TYPE_BOOL)
  {
   ElementNullSafe(PackAddStrEx(p, name, MAKEBOOL(v->value.boolean) ? "true" : "false", index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_NUMBER)
  {
   char tmp[64];
   ToStr64(tmp, v->value.number);
   ElementNullSafe(PackAddStrEx(p, name, tmp, index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_STRING)
  {
   ElementNullSafe(PackAddStrEx(p, name, v->value.string, index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
 }
 else if (TrimEndWith(name, sizeof(name), v_name, "_utf"))
 {
  if (v->type == JSON_TYPE_BOOL)
  {
   ElementNullSafe(PackAddUniStrEx(p, name, MAKEBOOL(v->value.boolean) ? L"true" : L"false", index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_NUMBER)
  {
   char tmp[64];
   wchar_t tmp2[64];
   ToStr64(tmp, v->value.number);
   StrToUni(tmp2, sizeof(tmp2), tmp);
   ElementNullSafe(PackAddUniStrEx(p, name, tmp2, index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_STRING)
  {
   wchar_t *uni = CopyUtfToUni(v->value.string);
   ElementNullSafe(PackAddUniStrEx(p, name, uni, index, total))->JsonHint_IsArray = !is_single;
   Free(uni);
   ok = 1;
  }
 }
 else if (TrimEndWith(name, sizeof(name), v_name, "_bin"))
 {
  if (v->type == JSON_TYPE_STRING)
  {
   UINT len = StrLen(v->value.string);
   UCHAR *data = ZeroMalloc(len * 4 + 64);
   UINT size = B64_Decode(data, v->value.string, len);
   ElementNullSafe(PackAddDataEx(p, name, data, size, index, total))->JsonHint_IsArray = !is_single;
   Free(data);
   ok = 1;
  }
 }
 else if (TrimEndWith(name, sizeof(name), v_name, "_dt"))
 {
  if (v->type == JSON_TYPE_NUMBER)
  {
   ElementNullSafe(PackAddInt64Ex(p, name, v->value.number, index, total))->JsonHint_IsArray = !is_single;
   ok = 1;
  }
  else if (v->type == JSON_TYPE_STRING)
  {
   UINT64 time = DateTimeStrRFC3339ToSystemTime64(v->value.string);
   ELEMENT *e = PackAddInt64Ex(p, name, time, index, total);
   if (e != ((void*)0))
   {
    e->JsonHint_IsArray = !is_single;
    e->JsonHint_IsDateTime = 1;
   }
   ok = 1;
  }
 }
 else if (TrimEndWith(name, sizeof(name), v_name, "_ip"))
 {
  if (v->type == JSON_TYPE_STRING)
  {
   IP ip;
   if (StrToIP(&ip, v->value.string))
   {
    PackAddIpEx2(p, name, &ip, index, total, is_single);
    ok = 1;
   }
  }
 }

 return ok;
}
