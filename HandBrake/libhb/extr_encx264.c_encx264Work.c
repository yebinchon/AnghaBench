
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int x264_picture_t ;
typedef int x264_nal_t ;
struct TYPE_18__ {int x264; TYPE_2__* api; } ;
typedef TYPE_3__ hb_work_private_t ;
struct TYPE_19__ {TYPE_3__* private_data; } ;
typedef TYPE_4__ hb_work_object_t ;
struct TYPE_16__ {int flags; } ;
struct TYPE_20__ {TYPE_1__ s; } ;
typedef TYPE_5__ hb_buffer_t ;
typedef int hb_buffer_list_t ;
struct TYPE_17__ {int (* encoder_encode ) (int ,int **,int*,int *,int *) ;scalar_t__ (* encoder_delayed_frames ) (int ) ;} ;


 int HB_BUF_FLAG_EOF ;
 int HB_WORK_DONE ;
 int HB_WORK_OK ;
 int hb_buffer_list_append (int *,TYPE_5__*) ;
 TYPE_5__* hb_buffer_list_clear (int *) ;
 TYPE_5__* nal_encode (TYPE_4__*,int *,int,int *) ;
 scalar_t__ stub1 (int ) ;
 int stub2 (int ,int **,int*,int *,int *) ;
 TYPE_5__* x264_encode (TYPE_4__*,TYPE_5__*) ;

int encx264Work( hb_work_object_t * w, hb_buffer_t ** buf_in,
                  hb_buffer_t ** buf_out )
{
    hb_work_private_t *pv = w->private_data;
    hb_buffer_t *in = *buf_in;

    *buf_out = ((void*)0);

    if (in->s.flags & HB_BUF_FLAG_EOF)
    {


        x264_picture_t pic_out;
        int i_nal;
        x264_nal_t *nal;
        hb_buffer_list_t list;

        hb_buffer_list_clear(&list);


        while ( pv->api->encoder_delayed_frames( pv->x264 ) )
        {
            pv->api->encoder_encode( pv->x264, &nal, &i_nal, ((void*)0), &pic_out );
            if ( i_nal == 0 )
                continue;
            if ( i_nal < 0 )
                break;

            hb_buffer_t *buf = nal_encode( w, &pic_out, i_nal, nal );
            hb_buffer_list_append(&list, buf);
        }

        hb_buffer_list_append(&list, in);

        *buf_out = hb_buffer_list_clear(&list);
        *buf_in = ((void*)0);
        return HB_WORK_DONE;
    }


    *buf_out = x264_encode( w, in );
    return HB_WORK_OK;
}
