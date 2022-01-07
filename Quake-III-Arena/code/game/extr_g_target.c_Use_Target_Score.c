
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int currentOrigin; } ;
struct TYPE_8__ {int count; TYPE_1__ r; } ;
typedef TYPE_2__ gentity_t ;


 int AddScore (TYPE_2__*,int ,int ) ;

void Use_Target_Score (gentity_t *ent, gentity_t *other, gentity_t *activator) {
 AddScore( activator, ent->r.currentOrigin, ent->count );
}
