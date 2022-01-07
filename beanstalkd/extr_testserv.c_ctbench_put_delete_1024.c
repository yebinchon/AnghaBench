
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bench_put_delete_size (int,int,int ,int ,int ) ;

void
ctbench_put_delete_1024(int n)
{
    bench_put_delete_size(n, 1024, 0, 0, 0);
}
