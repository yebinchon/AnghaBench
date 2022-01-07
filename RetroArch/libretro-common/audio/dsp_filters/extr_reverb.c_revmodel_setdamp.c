
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revmodel {float damp; } ;


 int revmodel_update (struct revmodel*) ;
 float scaledamp ;

__attribute__((used)) static void revmodel_setdamp(struct revmodel *rev, float value)
{
   rev->damp = value * scaledamp;
   revmodel_update(rev);
}
