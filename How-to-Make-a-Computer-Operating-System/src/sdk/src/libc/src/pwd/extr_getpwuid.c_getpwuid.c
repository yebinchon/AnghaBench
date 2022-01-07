
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;
typedef int passwd_myos ;


 struct passwd __tmp_passwd ;
 int build_tmp_passwd () ;
 int * myos_user_getID (int ) ;

struct passwd* getpwuid( uid_t uid ) {

 passwd_myos* pass=myos_user_getID(uid);
 if (pass==((void*)0))
  return ((void*)0);

 build_tmp_passwd();
 return &__tmp_passwd;
}
