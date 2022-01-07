
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__* modifications; } ;
typedef TYPE_1__ png_modifier ;
struct TYPE_10__ {int blue; int green; int red; } ;
typedef TYPE_2__ color_encoding ;
struct TYPE_12__ {struct TYPE_12__* next; int add; int modify_fn; int chunk; } ;
struct TYPE_11__ {TYPE_5__ this; void* by; void* bx; void* gy; void* gx; void* ry; void* rx; void* wy; void* wx; TYPE_2__ const* encoding; } ;
typedef TYPE_3__ chrm_modification ;
typedef int CIE_color ;


 int CHUNK_PLTE ;
 int CHUNK_cHRM ;
 int chrm_modify ;
 int chromaticity_x (int ) ;
 int chromaticity_y (int ) ;
 void* fix (int ) ;
 int modification_init (TYPE_5__*) ;
 int white_point (TYPE_2__ const*) ;

__attribute__((used)) static void
chrm_modification_init(chrm_modification *me, png_modifier *pm,
   const color_encoding *encoding)
{
   CIE_color white = white_point(encoding);


   me->encoding = encoding;


   me->wx = fix(chromaticity_x(white));
   me->wy = fix(chromaticity_y(white));

   me->rx = fix(chromaticity_x(encoding->red));
   me->ry = fix(chromaticity_y(encoding->red));
   me->gx = fix(chromaticity_x(encoding->green));
   me->gy = fix(chromaticity_y(encoding->green));
   me->bx = fix(chromaticity_x(encoding->blue));
   me->by = fix(chromaticity_y(encoding->blue));

   modification_init(&me->this);
   me->this.chunk = CHUNK_cHRM;
   me->this.modify_fn = chrm_modify;
   me->this.add = CHUNK_PLTE;
   me->this.next = pm->modifications;
   pm->modifications = &me->this;
}
