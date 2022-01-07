
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int passwd_myos ;


 struct passwd __tmp_passwd ;
 int _passwd_db_position ;
 int build_tmp_passwd () ;
 int * myos_user_getID (int ) ;

struct passwd* getpwent( void ) {

 passwd_myos* pass=myos_user_getID(_passwd_db_position);
 if (pass==((void*)0))
  return ((void*)0);

 build_tmp_passwd();
 _passwd_db_position++;
 return &__tmp_passwd;
}
