
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int box ;


 float box_intersection (int ,int ) ;
 float box_union (int ,int ) ;

float box_iou(box a, box b)
{
    return box_intersection(a, b)/box_union(a, b);
}
