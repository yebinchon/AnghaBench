
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* p_data; scalar_t__ index; scalar_t__ in_use; } ;
typedef TYPE_1__ tGAP_INFO ;
typedef scalar_t__ UINT8 ;
struct TYPE_6__ {TYPE_1__* blk; } ;


 scalar_t__ GAP_MAX_BLOCKS ;
 scalar_t__ TRUE ;
 TYPE_3__ gap_cb ;
 int memset (TYPE_1__*,int ,int) ;

tGAP_INFO *gap_allocate_cb (void)
{
    tGAP_INFO *p_cb = &gap_cb.blk[0];
    UINT8 x;

    for (x = 0; x < GAP_MAX_BLOCKS; x++, p_cb++) {
        if (!p_cb->in_use) {
            memset (p_cb, 0, sizeof (tGAP_INFO));

            p_cb->in_use = TRUE;
            p_cb->index = x;
            p_cb->p_data = (void *)((void*)0);
            return (p_cb);
        }
    }


    return (((void*)0));
}
