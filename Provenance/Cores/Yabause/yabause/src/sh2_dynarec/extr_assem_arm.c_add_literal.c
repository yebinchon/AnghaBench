
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t literalcount ;
 int** literals ;

add_literal(int addr,int val)
{
  literals[literalcount][0]=addr;
  literals[literalcount][1]=val;
  literalcount++;
}
