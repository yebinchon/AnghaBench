
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int RespawnItem (int *) ;

void Use_Item( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
 RespawnItem( ent );
}
