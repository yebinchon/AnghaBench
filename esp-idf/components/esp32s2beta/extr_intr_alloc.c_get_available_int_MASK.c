#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int intno; int flags; TYPE_2__* shared_vec_info; } ;
typedef  TYPE_1__ vector_desc_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef  TYPE_2__ shared_vector_desc_t ;
struct TYPE_10__ {scalar_t__* cpuflags; int level; scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ESP_INTR_FLAG_LEVELMASK ; 
 int ESP_INTR_FLAG_LOWMED ; 
 int ESP_INTR_FLAG_SHARED ; 
 scalar_t__ INTDESC_RESVD ; 
 scalar_t__ INTTP_LEVEL ; 
 int INT_MAX ; 
 int VECDESC_FL_SHARED ; 
 TYPE_1__* FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 TYPE_5__* int_desc ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(int flags, int cpu, int force, int source)
{
    int x;
    int best=-1;
    int bestLevel=9;
    int bestSharedCt=INT_MAX;
    //Default vector desc, for vectors not in the linked list
    vector_desc_t empty_vect_desc;
    FUNC5(&empty_vect_desc, 0, sizeof(vector_desc_t));

    //Level defaults to any low/med interrupt
    if (!(flags&ESP_INTR_FLAG_LEVELMASK)) flags|=ESP_INTR_FLAG_LOWMED;

    FUNC0("get_available_int: try to find existing. Cpu: %d, Source: %d", cpu, source);
    vector_desc_t *vd = FUNC2(source, cpu);
    if ( vd ) {
        // if existing vd found, don't need to search any more.
        FUNC0("get_avalible_int: existing vd found. intno: %d", vd->intno);
        if ( force != -1 && force != vd->intno ) {
            FUNC0("get_avalible_int: intr forced but not matach existing. existing intno: %d, force: %d", vd->intno, force);
        } else if ( !FUNC4(vd, flags, cpu, force) ) {
            FUNC0("get_avalible_int: existing vd invalid.");
        } else {
            best = vd->intno;
        }
        return best;
    }
    if (force!=-1) {
        FUNC0("get_available_int: try to find force. Cpu: %d, Source: %d, Force: %d", cpu, source, force);
        //if force assigned, don't need to search any more.
        vd = FUNC1(force, cpu);
        if (vd == NULL ) {
            //if existing vd not found, just check the default state for the intr.
            empty_vect_desc.intno = force;
            vd = &empty_vect_desc;
        }
        if ( FUNC4(vd, flags, cpu, force) ) {
            best = vd->intno;
        } else {
            FUNC0("get_avalible_int: forced vd invalid.");
        }
        return best;
    }

    FUNC0("get_free_int: start looking. Current cpu: %d", cpu);
    //No allocated handlers as well as forced intr, iterate over the 32 possible interrupts
    for (x=0; x<32; x++) {
        //Grab the vector_desc for this vector.
        vd=FUNC1(x, cpu);
        if (vd==NULL) {
            empty_vect_desc.intno = x;
            vd=&empty_vect_desc;
        }

        FUNC0("Int %d reserved %d level %d %s hasIsr %d",
            x, int_desc[x].cpuflags[cpu]==INTDESC_RESVD, int_desc[x].level,
            int_desc[x].type==INTTP_LEVEL?"LEVEL":"EDGE", FUNC3(x, cpu));
        if ( !FUNC4(vd, flags, cpu, force) ) continue;

        if (flags&ESP_INTR_FLAG_SHARED) {
            //We're allocating a shared int.
            //See if int already is used as a shared interrupt.
            if (vd->flags&VECDESC_FL_SHARED) {
                //We can use this already-marked-as-shared interrupt. Count the already attached isrs in order to see
                //how useful it is.
                int no=0;
                shared_vector_desc_t *svdesc=vd->shared_vec_info;
                while (svdesc!=NULL) {
                    no++;
                    svdesc=svdesc->next;
                }
                if (no<bestSharedCt || bestLevel>int_desc[x].level) {
                    //Seems like this shared vector is both okay and has the least amount of ISRs already attached to it.
                    best=x;
                    bestSharedCt=no;
                    bestLevel=int_desc[x].level;
                    FUNC0("...int %d more usable as a shared int: has %d existing vectors", x, no);
                } else {
                    FUNC0("...worse than int %d", best);
                }
            } else {
                if (best==-1) {
                    //We haven't found a feasible shared interrupt yet. This one is still free and usable, even if
                    //not marked as shared.
                    //Remember it in case we don't find any other shared interrupt that qualifies.
                    if (bestLevel>int_desc[x].level) {
                        best=x;
                        bestLevel=int_desc[x].level;
                        FUNC0("...int %d usable as a new shared int", x);
                    }
                } else {
                    FUNC0("...already have a shared int");
                }
            }
        } else {
            //Seems this interrupt is feasible. Select it and break out of the loop; no need to search further.
            if (bestLevel>int_desc[x].level) {
                best=x;
                bestLevel=int_desc[x].level;
            } else {
                FUNC0("...worse than int %d", best);
            }
        }
    }
    FUNC0("get_available_int: using int %d", best);

    //Okay, by now we have looked at all potential interrupts and hopefully have selected the best one in best.
    return best;
}