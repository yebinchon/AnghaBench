
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revmodel {float width; } ;


 int revmodel_update (struct revmodel*) ;

__attribute__((used)) static void revmodel_setwidth(struct revmodel *rev, float value)
{
   rev->width = value;
   revmodel_update(rev);
}
