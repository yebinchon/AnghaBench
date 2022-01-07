
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* code ;
 size_t pc ;

__attribute__((used)) static int Constant1( void ) {
 int v;

 v = code[pc];
 pc += 1;
 return v;
}
