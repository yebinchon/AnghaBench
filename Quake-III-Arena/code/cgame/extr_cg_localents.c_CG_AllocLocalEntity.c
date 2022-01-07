
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; struct TYPE_7__* prev; } ;
typedef TYPE_1__ localEntity_t ;


 int CG_FreeLocalEntity (TYPE_1__*) ;
 TYPE_1__ cg_activeLocalEntities ;
 TYPE_1__* cg_freeLocalEntities ;
 int memset (TYPE_1__*,int ,int) ;

localEntity_t *CG_AllocLocalEntity( void ) {
 localEntity_t *le;

 if ( !cg_freeLocalEntities ) {


  CG_FreeLocalEntity( cg_activeLocalEntities.prev );
 }

 le = cg_freeLocalEntities;
 cg_freeLocalEntities = cg_freeLocalEntities->next;

 memset( le, 0, sizeof( *le ) );


 le->next = cg_activeLocalEntities.next;
 le->prev = &cg_activeLocalEntities;
 cg_activeLocalEntities.next->prev = le;
 cg_activeLocalEntities.next = le;
 return le;
}
