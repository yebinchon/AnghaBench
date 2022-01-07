
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;


 int pthread_getw32threadid_np (int ) ;
 int pthread_self () ;

int64_t taosGetPthreadId() {



  return (int64_t)pthread_self();

}
