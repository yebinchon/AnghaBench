
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_CHARACTERISTIC_BINTEGER ;
 int syscall (int ,int,int,int,int) ;

int trap_Characteristic_BInteger(int character, int index, int min, int max) {
 return syscall( BOTLIB_AI_CHARACTERISTIC_BINTEGER, character, index, min, max );
}
