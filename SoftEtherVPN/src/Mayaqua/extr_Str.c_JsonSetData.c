
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int JSON_OBJECT ;


 int B64_Encode (char*,void*,int) ;
 int Free (char*) ;
 int JsonSetStr (int *,char*,char*) ;
 char* ZeroMalloc (int) ;

UINT JsonSetData(JSON_OBJECT *object, char *name, void *data, UINT size)
{
 UINT ret;
 char *b64 = ZeroMalloc(size * 4 + 32);
 B64_Encode(b64, data, size);

 ret = JsonSetStr(object, name, b64);

 Free(b64);
 return ret;
}
