
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sequence; } ;
typedef TYPE_1__ reordered_data_t ;
struct TYPE_7__ {TYPE_1__** reordered_hash; } ;
typedef TYPE_2__ hb_work_private_t ;


 int REORDERED_HASH_MASK ;
 int free (TYPE_1__*) ;

void
reordered_hash_add(hb_work_private_t * pv, reordered_data_t * reordered)
{
    int slot = reordered->sequence & REORDERED_HASH_MASK;





    free(pv->reordered_hash[slot]);
    pv->reordered_hash[slot] = reordered;
}
