
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_KeyDown (int *) ;
 int in_forward ;

void IN_ForwardDown(void) {IN_KeyDown(&in_forward);}
