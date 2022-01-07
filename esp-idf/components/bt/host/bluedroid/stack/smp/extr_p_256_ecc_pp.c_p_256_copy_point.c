
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Point ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void p_256_copy_point(Point *q, Point *p)
{
    memcpy(q, p, sizeof(Point));
}
