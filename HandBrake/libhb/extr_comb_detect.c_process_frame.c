
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int mode; int* ref_used; TYPE_3__** ref; int out_list; int frames; int comb_none; int comb_light; int comb_heavy; } ;
typedef TYPE_2__ hb_filter_private_t ;
struct TYPE_11__ {int combed; } ;
struct TYPE_13__ {TYPE_1__ s; } ;
typedef TYPE_3__ hb_buffer_t ;





 int MODE_MASK ;
 int apply_mask (TYPE_2__*,TYPE_3__*) ;
 int comb_segmenter (TYPE_2__*) ;
 TYPE_3__* hb_buffer_dup (TYPE_3__*) ;
 int hb_buffer_list_append (int *,TYPE_3__*) ;

__attribute__((used)) static void process_frame( hb_filter_private_t * pv )
{
    int combed;

    combed = comb_segmenter(pv);
    switch (combed)
    {
        case 130:
            pv->comb_heavy++;
            break;

        case 129:
            pv->comb_light++;
            break;

        case 128:
        default:
            pv->comb_none++;
            break;
    }
    pv->frames++;
    if ((pv->mode & MODE_MASK) && combed)
    {
        hb_buffer_t * out;
        out = hb_buffer_dup(pv->ref[1]);
        apply_mask(pv, out);
        out->s.combed = combed;
        hb_buffer_list_append(&pv->out_list, out);
    }
    else
    {
        pv->ref_used[1] = 1;
        pv->ref[1]->s.combed = combed;
        hb_buffer_list_append(&pv->out_list, pv->ref[1]);
    }
}
