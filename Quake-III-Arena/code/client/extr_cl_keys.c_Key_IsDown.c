
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int down; } ;


 TYPE_1__* keys ;
 int qfalse ;

qboolean Key_IsDown( int keynum ) {
 if ( keynum == -1 ) {
  return qfalse;
 }

 return keys[keynum].down;
}
