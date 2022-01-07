
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int warm_cache_op_range (int,int *,unsigned long) ;

int warm_cache_op_all(int op)
{
 return warm_cache_op_range(op, ((void*)0), (unsigned long)-1);
}
