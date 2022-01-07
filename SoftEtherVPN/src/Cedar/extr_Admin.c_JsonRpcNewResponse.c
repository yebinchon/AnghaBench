
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACK ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 int * JsonNewObject () ;
 int JsonSet (int *,char*,int *) ;
 int * JsonValueGetObject (int *) ;
 int * PackToJson (int *) ;

JSON_VALUE *JsonRpcNewResponse(PACK *p)
{
 JSON_VALUE *jv;
 JSON_OBJECT *jo;
 JSON_VALUE *jv2;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 jv = JsonNewObject();
 jo = JsonValueGetObject(jv);

 jv2 = PackToJson(p);

 JsonSet(jo, "result", jv2);

 return jv;
}
