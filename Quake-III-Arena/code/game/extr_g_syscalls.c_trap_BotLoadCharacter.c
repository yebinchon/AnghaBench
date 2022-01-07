
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_LOAD_CHARACTER ;
 int PASSFLOAT (float) ;
 int syscall (int ,char*,int ) ;

int trap_BotLoadCharacter(char *charfile, float skill) {
 return syscall( BOTLIB_AI_LOAD_CHARACTER, charfile, PASSFLOAT(skill));
}
