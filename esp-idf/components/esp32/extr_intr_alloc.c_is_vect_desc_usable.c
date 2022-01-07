
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int intno; int flags; } ;
typedef TYPE_1__ vector_desc_t ;
struct TYPE_5__ {scalar_t__* cpuflags; int level; scalar_t__ type; } ;


 int ALCHLOG (char*) ;
 int ESP_INTR_FLAG_EDGE ;
 int ESP_INTR_FLAG_IRAM ;
 int ESP_INTR_FLAG_SHARED ;
 scalar_t__ INTDESC_RESVD ;
 scalar_t__ INTDESC_SPECIAL ;
 scalar_t__ INTTP_EDGE ;
 scalar_t__ INTTP_LEVEL ;
 int VECDESC_FL_INIRAM ;
 int VECDESC_FL_NONSHARED ;
 int VECDESC_FL_RESERVED ;
 int VECDESC_FL_SHARED ;
 int assert (int) ;
 TYPE_3__* int_desc ;
 scalar_t__ int_has_handler (int,int) ;

__attribute__((used)) static bool is_vect_desc_usable(vector_desc_t *vd, int flags, int cpu, int force)
{

    int x = vd->intno;
    if (int_desc[x].cpuflags[cpu]==INTDESC_RESVD) {
        ALCHLOG("....Unusable: reserved");
        return 0;
    }
    if (int_desc[x].cpuflags[cpu]==INTDESC_SPECIAL && force==-1) {
        ALCHLOG("....Unusable: special-purpose int");
        return 0;
    }

    if (!(flags&(1<<int_desc[x].level))) {
        ALCHLOG("....Unusable: incompatible level");
        return 0;
    }

    if (((flags&ESP_INTR_FLAG_EDGE) && (int_desc[x].type==INTTP_LEVEL)) ||
            (((!(flags&ESP_INTR_FLAG_EDGE)) && (int_desc[x].type==INTTP_EDGE)))) {
        ALCHLOG("....Unusable: incompatible trigger type");
        return 0;
    }

    if (vd->flags&VECDESC_FL_RESERVED) {
        ALCHLOG("....Unusable: reserved at runtime.");
        return 0;
    }


    assert(!((vd->flags&VECDESC_FL_SHARED)&&(vd->flags&VECDESC_FL_NONSHARED)));

    if (vd->flags&VECDESC_FL_NONSHARED) {
        ALCHLOG("....Unusable: already in (non-shared) use.");
        return 0;
    }

    if (vd->flags&VECDESC_FL_SHARED ) {
        if (flags&ESP_INTR_FLAG_SHARED) {
            bool in_iram_flag=((flags&ESP_INTR_FLAG_IRAM)!=0);
            bool desc_in_iram_flag=((vd->flags&VECDESC_FL_INIRAM)!=0);

            if ((vd->flags&VECDESC_FL_SHARED) && (desc_in_iram_flag!=in_iram_flag)) {
                ALCHLOG("....Unusable: shared but iram prop doesn't match");
                return 0;
            }
        } else {

            ALCHLOG("...Unusable: int is shared, we need non-shared.");
            return 0;
        }
    } else if (int_has_handler(x, cpu)) {

        ALCHLOG("....Unusable: already allocated");
        return 0;
    }

    return 1;
}
