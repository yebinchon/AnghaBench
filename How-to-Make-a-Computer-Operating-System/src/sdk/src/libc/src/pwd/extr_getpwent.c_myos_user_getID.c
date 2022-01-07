
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int passwd_myos ;


 int myos_pass ;
 int syscall2 (int,int,int ) ;

passwd_myos* myos_user_getID(int id){
 int ret=syscall2(69,id,(uint32_t)&myos_pass);
 if (ret!=0)
  return &myos_pass;
 else
  return ((void*)0);
}
