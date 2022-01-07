
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SESSION ;


 int Free (void*) ;

bool NullPaPutPacket(SESSION *s, void *data, UINT size)
{

 if (s == ((void*)0))
 {
  return 0;
 }
 if (data == ((void*)0))
 {
  return 1;
 }


 Free(data);

 return 1;
}
