
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_box {int color; } ;


 int FFDIFFSIGN (int ,int ) ;

__attribute__((used)) static int cmp_color(const void *a, const void *b)
{
    const struct range_box *box1 = a;
    const struct range_box *box2 = b;
    return FFDIFFSIGN(box1->color , box2->color);
}
