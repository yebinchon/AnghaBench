
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ csize; scalar_t__ size; } ;
struct TYPE_7__ {int num_files; int csize; int size; } ;
struct TYPE_6__ {int num_files; int csize; int size; } ;
struct TYPE_9__ {scalar_t__ level; TYPE_3__ item; TYPE_2__ totals; TYPE_1__ parts; scalar_t__ part; scalar_t__ has_chunks; scalar_t__ inside_chunks; } ;
typedef TYPE_4__ unpack_user ;


 int SET_LAST_ERROR (char*) ;

__attribute__((used)) static inline int unpack_callback_map_end(unpack_user* u)
{
    u->level--;
    if(u->inside_chunks) {
        SET_LAST_ERROR("Unexpected map end");
        return -1;
    }
    if(u->level == 0) {

        if(u->has_chunks) {
            if(u->part) {
                u->parts.num_files += 1;
                u->parts.size += u->item.size;
                u->parts.csize += u->item.csize;
            }
            u->totals.num_files += 1;
            u->totals.size += u->item.size;
            u->totals.csize += u->item.csize;
        }
    }
    return 0;
}
