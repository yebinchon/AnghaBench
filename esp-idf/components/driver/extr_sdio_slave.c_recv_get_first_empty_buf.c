
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int buf_stailq_t ;
struct TYPE_7__ {scalar_t__ owner; } ;
typedef TYPE_1__ buf_desc_t ;
struct TYPE_8__ {int recv_link_list; } ;


 TYPE_1__* STAILQ_FIRST (int * const) ;
 TYPE_1__* STAILQ_NEXT (TYPE_1__*,int ) ;
 TYPE_3__ context ;
 int qe ;

__attribute__((used)) static inline buf_desc_t* recv_get_first_empty_buf(void)
{
    buf_stailq_t *const queue = &context.recv_link_list;
    buf_desc_t *desc = STAILQ_FIRST(queue);
    while(desc && desc->owner == 0) {
        desc = STAILQ_NEXT(desc, qe);
    }
    return desc;
}
