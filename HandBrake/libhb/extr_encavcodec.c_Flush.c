
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_5__* context; int file; TYPE_1__* job; } ;
typedef TYPE_2__ hb_work_private_t ;
struct TYPE_9__ {TYPE_2__* private_data; } ;
typedef TYPE_3__ hb_work_object_t ;
typedef int hb_buffer_list_t ;
struct TYPE_10__ {char* stats_out; } ;
struct TYPE_7__ {scalar_t__ pass_id; } ;


 scalar_t__ HB_PASS_ENCODE_1ST ;
 int avcodec_send_frame (TYPE_5__*,int *) ;
 int fprintf (int ,char*,char*) ;
 int get_packets (TYPE_3__*,int *) ;

__attribute__((used)) static void Flush( hb_work_object_t * w, hb_buffer_list_t * list )
{
    hb_work_private_t * pv = w->private_data;

    avcodec_send_frame(pv->context, ((void*)0));



    if (pv->job->pass_id == HB_PASS_ENCODE_1ST &&
        pv->context->stats_out != ((void*)0))
    {
        fprintf( pv->file, "%s", pv->context->stats_out );
    }

    get_packets(w, list);
}
