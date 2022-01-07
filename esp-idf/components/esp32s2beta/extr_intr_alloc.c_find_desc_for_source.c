
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int source; int cpu; struct TYPE_5__* next; TYPE_2__* shared_vec_info; } ;
typedef TYPE_1__ vector_desc_t ;
struct TYPE_6__ {int source; struct TYPE_6__* next; } ;
typedef TYPE_2__ shared_vector_desc_t ;


 int VECDESC_FL_SHARED ;
 int assert (int ) ;
 TYPE_1__* vector_desc_head ;

__attribute__((used)) static vector_desc_t * find_desc_for_source(int source, int cpu)
{
    vector_desc_t *vd=vector_desc_head;
    while(vd!=((void*)0)) {
        if ( !(vd->flags & VECDESC_FL_SHARED) ) {
            if ( vd->source == source && cpu == vd->cpu ) break;
        } else if ( vd->cpu == cpu ) {

            bool found = 0;
            shared_vector_desc_t *svd = vd->shared_vec_info;
            assert(svd != ((void*)0) );
            while(svd) {
                if ( svd->source == source ) {
                    found = 1;
                    break;
                }
                svd = svd->next;
            }
            if ( found ) break;
        }
        vd=vd->next;
    }
    return vd;
}
