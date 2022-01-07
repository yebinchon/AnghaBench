
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_LOAD_MAP ;
 int syscall (int ,char const*) ;

int trap_BotLibLoadMap(const char *mapname) {
 return syscall( BOTLIB_LOAD_MAP, mapname );
}
