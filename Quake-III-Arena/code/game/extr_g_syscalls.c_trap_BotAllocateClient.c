
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_BOT_ALLOCATE_CLIENT ;
 int syscall (int ) ;

int trap_BotAllocateClient( void ) {
 return syscall( G_BOT_ALLOCATE_CLIENT );
}
