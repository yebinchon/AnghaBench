
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bench_put_delete_size (int,int,int,int,int) ;

void
ctbench_put_delete_wal_8192_fsync_200ms(int n)
{
    bench_put_delete_size(n, 8192, 512000, 1, 500);
}
