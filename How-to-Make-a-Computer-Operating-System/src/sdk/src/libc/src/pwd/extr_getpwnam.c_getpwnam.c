
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int passwd_myos ;


 struct passwd __tmp_passwd ;
 int build_tmp_passwd () ;
 int * myos_user_getN (char const*) ;

struct passwd* getpwnam( const char* name ) {

 passwd_myos* pass=myos_user_getN(name);
 if (pass==((void*)0))
  return ((void*)0);

 build_tmp_passwd();
 return &__tmp_passwd;
}
