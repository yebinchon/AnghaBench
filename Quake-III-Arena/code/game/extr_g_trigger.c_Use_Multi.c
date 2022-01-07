
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gentity_t ;


 int multi_trigger (int *,int *) ;

void Use_Multi( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
 multi_trigger( ent, activator );
}
