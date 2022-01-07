
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tss_t ;


 int TlsFree (int ) ;
 int pthread_key_delete (int ) ;

void tss_delete(tss_t key)
{



  pthread_key_delete(key);

}
