
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int BOTLIB_TEST ;
 int syscall (int ,int,char*,int ,int ) ;

int trap_BotLibTest(int parm0, char *parm1, vec3_t parm2, vec3_t parm3) {
 return syscall( BOTLIB_TEST, parm0, parm1, parm2, parm3 );
}
