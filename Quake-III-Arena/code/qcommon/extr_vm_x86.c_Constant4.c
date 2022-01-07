
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* code ;
 size_t pc ;

__attribute__((used)) static int Constant4( void ) {
 int v;

 v = code[pc] | (code[pc+1]<<8) | (code[pc+2]<<16) | (code[pc+3]<<24);
 pc += 4;
 return v;
}
