
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int CEDAR ;


 int Rand (int *,int ) ;
 int Rand32 () ;
 int SHA1_SIZE ;

void NewSessionKey(CEDAR *cedar, UCHAR *session_key, UINT *session_key_32)
{

 if (cedar == ((void*)0) || session_key == ((void*)0) || session_key_32 == ((void*)0))
 {
  return;
 }

 Rand(session_key, SHA1_SIZE);
 *session_key_32 = Rand32();
}
