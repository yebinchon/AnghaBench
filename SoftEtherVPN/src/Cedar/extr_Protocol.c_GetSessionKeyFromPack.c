
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int PACK ;


 int PackGetData (int *,char*,int *) ;
 scalar_t__ PackGetDataSize (int *,char*) ;
 int PackGetInt (int *,char*) ;
 scalar_t__ SHA1_SIZE ;

bool GetSessionKeyFromPack(PACK *p, UCHAR *session_key, UINT *session_key_32)
{

 if (p == ((void*)0) || session_key == ((void*)0) || session_key_32 == ((void*)0))
 {
  return 0;
 }

 if (PackGetDataSize(p, "session_key") != SHA1_SIZE)
 {
  return 0;
 }
 if (PackGetData(p, "session_key", session_key) == 0)
 {
  return 0;
 }
 *session_key_32 = PackGetInt(p, "session_key_32");

 return 1;
}
