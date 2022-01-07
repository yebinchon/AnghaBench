
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usercmd_t ;


 int BOTLIB_USER_COMMAND ;
 int syscall (int ,int,int *) ;

void trap_BotUserCommand(int clientNum, usercmd_t *ucmd) {
 syscall( BOTLIB_USER_COMMAND, clientNum, ucmd );
}
