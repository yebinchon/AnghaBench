
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* buf; scalar_t__ list; int vd; int vi; int vb; int vc; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_6__ {TYPE_1__* private_data; } ;
typedef TYPE_2__ hb_work_object_t ;


 int free (TYPE_1__*) ;
 int hb_list_empty (scalar_t__*) ;
 int vorbis_block_clear (int *) ;
 int vorbis_comment_clear (int *) ;
 int vorbis_dsp_clear (int *) ;
 int vorbis_info_clear (int *) ;

void encvorbisClose(hb_work_object_t * w)
{
    hb_work_private_t *pv = w->private_data;

    vorbis_comment_clear(&pv->vc);
    vorbis_block_clear(&pv->vb);
    vorbis_info_clear(&pv->vi);
    vorbis_dsp_clear(&pv->vd);

    if (pv->list)
    {
        hb_list_empty(&pv->list);
    }

    free(pv->buf);
    free(pv);
    w->private_data = ((void*)0);
}
