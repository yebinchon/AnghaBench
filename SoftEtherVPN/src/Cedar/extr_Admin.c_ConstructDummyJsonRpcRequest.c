
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rand ;
typedef int id_str ;
typedef int UCHAR ;
typedef int JSON_VALUE ;
typedef int JSON_OBJECT ;


 int BinToStr (char*,int,int *,int) ;
 int * JsonNewObject () ;
 int * JsonObject (int *) ;
 int JsonSet (int *,char*,int *) ;
 int JsonSetStr (int *,char*,char*) ;
 int Rand (int *,int) ;

JSON_VALUE *ConstructDummyJsonRpcRequest(char *method_name, JSON_VALUE *p)
{
 JSON_VALUE *ret;
 JSON_OBJECT *ret_object;
 UCHAR rand[16];
 char id_str[64];

 Rand(rand, sizeof(rand));

 BinToStr(id_str, sizeof(id_str), rand, sizeof(rand));

 ret = JsonNewObject();
 ret_object = JsonObject(ret);

 JsonSetStr(ret_object, "jsonrpc", "2.0");
 JsonSetStr(ret_object, "method", method_name);
 JsonSet(ret_object, "params", p);
 JsonSetStr(ret_object, "id", id_str);

 return ret;
}
