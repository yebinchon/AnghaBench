
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; int w; int y; int x; } ;
typedef TYPE_1__ rectDef_t ;
typedef int qboolean ;


 scalar_t__ Float_Parse (char**,int *) ;
 int qfalse ;
 int qtrue ;

qboolean Rect_Parse(char **p, rectDef_t *r) {
 if (Float_Parse(p, &r->x)) {
  if (Float_Parse(p, &r->y)) {
   if (Float_Parse(p, &r->w)) {
    if (Float_Parse(p, &r->h)) {
     return qtrue;
    }
   }
  }
 }
 return qfalse;
}
