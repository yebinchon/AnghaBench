
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_CHARACTERISTIC_INTEGER ;
 int syscall (int ,int,int) ;

int trap_Characteristic_Integer(int character, int index) {
 return syscall( BOTLIB_AI_CHARACTERISTIC_INTEGER, character, index );
}
