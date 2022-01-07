
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* modifications; } ;
typedef TYPE_1__ png_modifier ;
typedef scalar_t__ png_fixed_point ;
struct TYPE_8__ {struct TYPE_8__* next; int add; int modify_fn; int chunk; } ;
struct TYPE_7__ {TYPE_3__ this; scalar_t__ gamma; } ;
typedef TYPE_2__ gama_modification ;


 int CHUNK_PLTE ;
 int CHUNK_gAMA ;
 double fix (double) ;
 int gama_modify ;
 int modification_init (TYPE_3__*) ;

__attribute__((used)) static void
gama_modification_init(gama_modification *me, png_modifier *pm, double gammad)
{
   double g;

   modification_init(&me->this);
   me->this.chunk = CHUNK_gAMA;
   me->this.modify_fn = gama_modify;
   me->this.add = CHUNK_PLTE;
   g = fix(gammad);
   me->gamma = (png_fixed_point)g;
   me->this.next = pm->modifications;
   pm->modifications = &me->this;
}
