
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int PACK ;


 int * NewPack () ;
 int PackAddData (int *,char*,int *,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int SHA1_SIZE ;

PACK *PackAdditionalConnect(UCHAR *session_key)
{
 PACK *p;

 if (session_key == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 PackAddStr(p, "method", "additional_connect");
 PackAddData(p, "session_key", session_key, SHA1_SIZE);

 return p;
}
