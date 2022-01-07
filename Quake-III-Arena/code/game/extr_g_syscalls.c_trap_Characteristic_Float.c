
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_CHARACTERISTIC_FLOAT ;
 int syscall (int ,int,int) ;

float trap_Characteristic_Float(int character, int index) {
 int temp;
 temp = syscall( BOTLIB_AI_CHARACTERISTIC_FLOAT, character, index );
 return (*(float*)&temp);
}
