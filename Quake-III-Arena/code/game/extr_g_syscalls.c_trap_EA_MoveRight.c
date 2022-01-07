
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_EA_MOVE_RIGHT ;
 int syscall (int ,int) ;

void trap_EA_MoveRight(int client) {
 syscall( BOTLIB_EA_MOVE_RIGHT, client );
}
