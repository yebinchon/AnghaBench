
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ allocPoint ;
 int outOfMemory ;
 int qfalse ;

void UI_InitMemory( void ) {
 allocPoint = 0;
 outOfMemory = qfalse;
}
