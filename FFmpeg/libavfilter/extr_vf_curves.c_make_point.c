
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keypoint {double x; double y; struct keypoint* next; } ;


 struct keypoint* av_mallocz (int) ;

__attribute__((used)) static struct keypoint *make_point(double x, double y, struct keypoint *next)
{
    struct keypoint *point = av_mallocz(sizeof(*point));

    if (!point)
        return ((void*)0);
    point->x = x;
    point->y = y;
    point->next = next;
    return point;
}
