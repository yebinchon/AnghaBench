
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skinNum; } ;
struct TYPE_4__ {TYPE_1__ testModelEntity; } ;


 int CG_Printf (char*,int ) ;
 TYPE_2__ cg ;

void CG_TestModelNextSkin_f (void) {
 cg.testModelEntity.skinNum++;
 CG_Printf( "skin %i\n", cg.testModelEntity.skinNum );
}
