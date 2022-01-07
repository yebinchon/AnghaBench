
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_KeyUp (int *) ;
 int in_speed ;

void IN_SpeedUp(void) {IN_KeyUp(&in_speed);}
