
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revmodel {float dry; } ;


 int revmodel_update (struct revmodel*) ;
 float scaledry ;

__attribute__((used)) static void revmodel_setdry(struct revmodel *rev, float value)
{
   rev->dry = value * scaledry;
   revmodel_update(rev);
}
