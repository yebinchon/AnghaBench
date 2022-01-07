
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_CHARACTERISTIC_BFLOAT ;
 int PASSFLOAT (float) ;
 int syscall (int ,int,int,int ,int ) ;

float trap_Characteristic_BFloat(int character, int index, float min, float max) {
 int temp;
 temp = syscall( BOTLIB_AI_CHARACTERISTIC_BFLOAT, character, index, PASSFLOAT(min), PASSFLOAT(max) );
 return (*(float*)&temp);
}
