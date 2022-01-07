
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ repeats; scalar_t__ down; } ;


 int CL_KeyEvent (int,int ,int ) ;
 int MAX_KEYS ;
 int anykeydown ;
 TYPE_1__* keys ;
 int qfalse ;

void Key_ClearStates (void)
{
 int i;

 anykeydown = qfalse;

 for ( i=0 ; i < MAX_KEYS ; i++ ) {
  if ( keys[i].down ) {
   CL_KeyEvent( i, qfalse, 0 );

  }
  keys[i].down = 0;
  keys[i].repeats = 0;
 }
}
