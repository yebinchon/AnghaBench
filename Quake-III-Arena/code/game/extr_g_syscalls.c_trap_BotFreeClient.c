
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_BOT_FREE_CLIENT ;
 int syscall (int ,int) ;

void trap_BotFreeClient( int clientNum ) {
 syscall( G_BOT_FREE_CLIENT, clientNum );
}
