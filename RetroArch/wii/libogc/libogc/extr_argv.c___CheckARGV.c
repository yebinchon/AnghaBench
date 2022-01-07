
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ argvMagic; char* commandLine; scalar_t__ endARGV; int length; int * argv; scalar_t__ argc; } ;


 scalar_t__ ARGV_MAGIC ;
 scalar_t__ __Arena1Lo ;
 char* __argvArena1Lo ;
 TYPE_1__* __system_argv ;
 int build_argv (TYPE_1__*) ;
 int memmove (int *,char*,int ) ;

void __CheckARGV() {

 if ( __system_argv->argvMagic != ARGV_MAGIC ) {
  __system_argv->argc = 0;
  __system_argv->argv = ((void*)0);
  return;
 }

 u8 *dest = (u8 *)( ((int)__Arena1Lo + 3) & ~3);

 memmove(dest, __system_argv->commandLine, __system_argv->length);
 __system_argv->commandLine = (char *)dest;
 build_argv(__system_argv);

 __argvArena1Lo = (char *)__system_argv->endARGV;

}
