
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rand () ;

__attribute__((used)) static int get_workload(int minv, int maxv)
{
    return maxv == minv ? maxv : rand() % (maxv - minv) + minv;
}
