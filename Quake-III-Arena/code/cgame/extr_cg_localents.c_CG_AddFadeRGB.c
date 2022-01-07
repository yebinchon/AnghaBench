
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float* shaderRGBA; } ;
typedef TYPE_1__ refEntity_t ;
struct TYPE_7__ {float endTime; float lifeRate; float* color; TYPE_1__ refEntity; } ;
typedef TYPE_2__ localEntity_t ;
struct TYPE_8__ {float time; } ;


 TYPE_4__ cg ;
 int trap_R_AddRefEntityToScene (TYPE_1__*) ;

void CG_AddFadeRGB( localEntity_t *le ) {
 refEntity_t *re;
 float c;

 re = &le->refEntity;

 c = ( le->endTime - cg.time ) * le->lifeRate;
 c *= 0xff;

 re->shaderRGBA[0] = le->color[0] * c;
 re->shaderRGBA[1] = le->color[1] * c;
 re->shaderRGBA[2] = le->color[2] * c;
 re->shaderRGBA[3] = le->color[3] * c;

 trap_R_AddRefEntityToScene( re );
}
