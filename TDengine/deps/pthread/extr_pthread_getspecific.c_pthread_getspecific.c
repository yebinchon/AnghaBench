
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_key_t ;
struct TYPE_3__ {int key; } ;


 int GetLastError () ;
 int SetLastError (int) ;
 void* TlsGetValue (int ) ;
 int WSAGetLastError () ;
 int WSASetLastError (int) ;

void *
pthread_getspecific (pthread_key_t key)
{
  void * ptr;

  if (key == ((void*)0))
    {
      ptr = ((void*)0);
    }
  else
    {
      int lasterror = GetLastError ();



      ptr = TlsGetValue (key->key);

      SetLastError (lasterror);



    }

  return ptr;
}
