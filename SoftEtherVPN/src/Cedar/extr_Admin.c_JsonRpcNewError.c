
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int msg ;
typedef int UINT64 ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 int * JsonNewObject () ;
 int JsonSet (int *,char*,int *) ;
 int JsonSetNumber (int *,char*,int ) ;
 int JsonSetUniStr (int *,char*,int *) ;
 int * JsonValueGetObject (int *) ;
 int MAX_PATH ;
 int UniFormat (int *,int,char*,int,...) ;
 scalar_t__ UniIsEmptyStr (int *) ;

JSON_VALUE *JsonRpcNewError(int code, wchar_t *message)
{
 wchar_t msg[MAX_PATH];
 JSON_VALUE *jv;
 JSON_OBJECT *jo;
 JSON_VALUE *jv2;
 JSON_OBJECT *jo2;

 if (UniIsEmptyStr(message))
 {
  UniFormat(msg, sizeof(msg), L"Error code %u", code);
 }
 else
 {
  UniFormat(msg, sizeof(msg), L"Error code %u: %s", code, message);
 }

 jv = JsonNewObject();
 jo = JsonValueGetObject(jv);

 jv2 = JsonNewObject();
 jo2 = JsonValueGetObject(jv2);

 JsonSet(jo, "error", jv2);

 JsonSetNumber(jo2, "code", (UINT64)code);
 JsonSetUniStr(jo2, "message", msg);

 return jv;
}
