
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int list_subtitle; } ;
typedef TYPE_1__ hb_work_private_t ;
struct TYPE_6__ {int fifo_in; } ;
typedef TYPE_2__ hb_subtitle_t ;
typedef int hb_buffer_t ;


 int * hb_buffer_dup (int *) ;
 int hb_fifo_push (int ,int *) ;
 int hb_list_count (int ) ;
 TYPE_2__* hb_list_item (int ,int) ;

__attribute__((used)) static void cc_send_to_decoder(hb_work_private_t *pv, hb_buffer_t *buf)
{
    if (buf == ((void*)0))
        return;



    hb_subtitle_t *subtitle;
    int ii = 0, n = hb_list_count(pv->list_subtitle);
    while (--n > 0)
    {

        hb_buffer_t *cpy = hb_buffer_dup(buf);

        subtitle = hb_list_item(pv->list_subtitle, ii++);
        hb_fifo_push(subtitle->fifo_in, cpy);
    }
    subtitle = hb_list_item(pv->list_subtitle, ii);
    hb_fifo_push( subtitle->fifo_in, buf );
}
