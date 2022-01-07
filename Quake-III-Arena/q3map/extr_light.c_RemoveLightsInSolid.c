
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; scalar_t__ w; int origin; } ;
typedef TYPE_1__ light_t ;


 int FreeWinding (scalar_t__) ;
 scalar_t__ PointInSolid (int ) ;
 int _printf (char*,int) ;
 int free (TYPE_1__*) ;
 TYPE_1__* lights ;

void RemoveLightsInSolid(void)
{
 light_t *light, *prev;
 int numsolid = 0;

 prev = ((void*)0);
 for ( light = lights ; light ; ) {
  if (PointInSolid(light->origin))
  {
   if (prev) prev->next = light->next;
   else lights = light->next;
   if (light->w)
    FreeWinding(light->w);
   free(light);
   numsolid++;
   if (prev)
    light = prev->next;
   else
    light = lights;
  }
  else
  {
   prev = light;
   light = light->next;
  }
 }
 _printf (" %7i lights in solid\n", numsolid);
}
