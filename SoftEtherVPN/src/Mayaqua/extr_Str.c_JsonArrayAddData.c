
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_ARRAY ;


 int B64_Encode (char*,void*,int) ;
 int Free (char*) ;
 int JsonArrayAddStr (int *,char*) ;
 char* ZeroMalloc (int) ;

UINT JsonArrayAddData(JSON_ARRAY *array, void *data, UINT size)
{
 UINT ret;
 char *b64 = ZeroMalloc(size * 4 + 32);
 B64_Encode(b64, data, size);

 ret = JsonArrayAddStr(array, b64);

 Free(b64);
 return ret;
}
