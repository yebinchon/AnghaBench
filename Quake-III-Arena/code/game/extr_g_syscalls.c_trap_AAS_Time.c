
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AAS_TIME ;
 int syscall (int ) ;

float trap_AAS_Time(void) {
 int temp;
 temp = syscall( BOTLIB_AAS_TIME );
 return (*(float*)&temp);
}
