
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* down; int msec; unsigned int downtime; void* active; } ;
typedef TYPE_1__ kbutton_t ;


 char* Cmd_Argv (int) ;
 void* atoi (char*) ;
 int frame_msec ;
 void* qfalse ;

void IN_KeyUp( kbutton_t *b ) {
 int k;
 char *c;
 unsigned uptime;

 c = Cmd_Argv(1);
 if ( c[0] ) {
  k = atoi(c);
 } else {

  b->down[0] = b->down[1] = 0;
  b->active = qfalse;
  return;
 }

 if ( b->down[0] == k ) {
  b->down[0] = 0;
 } else if ( b->down[1] == k ) {
  b->down[1] = 0;
 } else {
  return;
 }
 if ( b->down[0] || b->down[1] ) {
  return;
 }

 b->active = qfalse;


 c = Cmd_Argv(2);
 uptime = atoi(c);
 if ( uptime ) {
  b->msec += uptime - b->downtime;
 } else {
  b->msec += frame_msec / 2;
 }

 b->active = qfalse;
}
