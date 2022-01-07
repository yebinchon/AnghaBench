
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* nextMark; TYPE_1__* prevMark; } ;
typedef TYPE_2__ markPoly_t ;
struct TYPE_5__ {TYPE_2__* nextMark; } ;


 int CG_Error (char*) ;
 TYPE_2__* cg_freeMarkPolys ;

void CG_FreeMarkPoly( markPoly_t *le ) {
 if ( !le->prevMark ) {
  CG_Error( "CG_FreeLocalEntity: not active" );
 }


 le->prevMark->nextMark = le->nextMark;
 le->nextMark->prevMark = le->prevMark;


 le->nextMark = cg_freeMarkPolys;
 cg_freeMarkPolys = le;
}
