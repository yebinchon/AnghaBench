
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_6__ {TYPE_2__* snap; } ;
struct TYPE_4__ {int * stats; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;


 int CG_GetColorForHealth (int ,int ,int ) ;
 size_t STAT_ARMOR ;
 size_t STAT_HEALTH ;
 TYPE_3__ cg ;

void CG_ColorForHealth( vec4_t hcolor ) {

 CG_GetColorForHealth( cg.snap->ps.stats[STAT_HEALTH],
  cg.snap->ps.stats[STAT_ARMOR], hcolor );
}
