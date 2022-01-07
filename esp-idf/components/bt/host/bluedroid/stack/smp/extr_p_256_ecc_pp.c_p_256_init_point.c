
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Point ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void p_256_init_point(Point *q)
{
    memset(q, 0, sizeof(Point));
}
