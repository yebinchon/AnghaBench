
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int intno; int flags; TYPE_2__* shared_vec_info; } ;
typedef TYPE_1__ vector_desc_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_2__ shared_vector_desc_t ;
struct TYPE_10__ {scalar_t__* cpuflags; int level; scalar_t__ type; } ;


 int ALCHLOG (char*,...) ;
 int ESP_INTR_FLAG_LEVELMASK ;
 int ESP_INTR_FLAG_LOWMED ;
 int ESP_INTR_FLAG_SHARED ;
 scalar_t__ INTDESC_RESVD ;
 scalar_t__ INTTP_LEVEL ;
 int INT_MAX ;
 int VECDESC_FL_SHARED ;
 TYPE_1__* find_desc_for_int (int,int) ;
 TYPE_1__* find_desc_for_source (int,int) ;
 TYPE_5__* int_desc ;
 int int_has_handler (int,int) ;
 scalar_t__ is_vect_desc_usable (TYPE_1__*,int,int,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int get_available_int(int flags, int cpu, int force, int source)
{
    int x;
    int best=-1;
    int bestLevel=9;
    int bestSharedCt=INT_MAX;

    vector_desc_t empty_vect_desc;
    memset(&empty_vect_desc, 0, sizeof(vector_desc_t));


    if (!(flags&ESP_INTR_FLAG_LEVELMASK)) flags|=ESP_INTR_FLAG_LOWMED;

    ALCHLOG("get_available_int: try to find existing. Cpu: %d, Source: %d", cpu, source);
    vector_desc_t *vd = find_desc_for_source(source, cpu);
    if ( vd ) {

        ALCHLOG("get_avalible_int: existing vd found. intno: %d", vd->intno);
        if ( force != -1 && force != vd->intno ) {
            ALCHLOG("get_avalible_int: intr forced but not matach existing. existing intno: %d, force: %d", vd->intno, force);
        } else if ( !is_vect_desc_usable(vd, flags, cpu, force) ) {
            ALCHLOG("get_avalible_int: existing vd invalid.");
        } else {
            best = vd->intno;
        }
        return best;
    }
    if (force!=-1) {
        ALCHLOG("get_available_int: try to find force. Cpu: %d, Source: %d, Force: %d", cpu, source, force);

        vd = find_desc_for_int(force, cpu);
        if (vd == ((void*)0) ) {

            empty_vect_desc.intno = force;
            vd = &empty_vect_desc;
        }
        if ( is_vect_desc_usable(vd, flags, cpu, force) ) {
            best = vd->intno;
        } else {
            ALCHLOG("get_avalible_int: forced vd invalid.");
        }
        return best;
    }

    ALCHLOG("get_free_int: start looking. Current cpu: %d", cpu);

    for (x=0; x<32; x++) {

        vd=find_desc_for_int(x, cpu);
        if (vd==((void*)0)) {
            empty_vect_desc.intno = x;
            vd=&empty_vect_desc;
        }

        ALCHLOG("Int %d reserved %d level %d %s hasIsr %d",
            x, int_desc[x].cpuflags[cpu]==INTDESC_RESVD, int_desc[x].level,
            int_desc[x].type==INTTP_LEVEL?"LEVEL":"EDGE", int_has_handler(x, cpu));
        if ( !is_vect_desc_usable(vd, flags, cpu, force) ) continue;

        if (flags&ESP_INTR_FLAG_SHARED) {


            if (vd->flags&VECDESC_FL_SHARED) {


                int no=0;
                shared_vector_desc_t *svdesc=vd->shared_vec_info;
                while (svdesc!=((void*)0)) {
                    no++;
                    svdesc=svdesc->next;
                }
                if (no<bestSharedCt || bestLevel>int_desc[x].level) {

                    best=x;
                    bestSharedCt=no;
                    bestLevel=int_desc[x].level;
                    ALCHLOG("...int %d more usable as a shared int: has %d existing vectors", x, no);
                } else {
                    ALCHLOG("...worse than int %d", best);
                }
            } else {
                if (best==-1) {



                    if (bestLevel>int_desc[x].level) {
                        best=x;
                        bestLevel=int_desc[x].level;
                        ALCHLOG("...int %d usable as a new shared int", x);
                    }
                } else {
                    ALCHLOG("...already have a shared int");
                }
            }
        } else {

            if (bestLevel>int_desc[x].level) {
                best=x;
                bestLevel=int_desc[x].level;
            } else {
                ALCHLOG("...worse than int %d", best);
            }
        }
    }
    ALCHLOG("get_available_int: using int %d", best);


    return best;
}
