
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int len; int event; TYPE_3__* p_data; } ;
typedef TYPE_2__ tBTA_DM_SEARCH_PARAM ;
typedef int tBTA_DM_SEARCH ;
typedef int btc_msg_t ;
struct TYPE_8__ {int raw_data_size; TYPE_3__* p_raw_data; } ;
struct TYPE_10__ {TYPE_1__ disc_res; } ;
typedef TYPE_3__ UINT8 ;



 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int memset (TYPE_3__*,int,int) ;
 TYPE_3__* osi_malloc (int) ;

__attribute__((used)) static void search_service_record_copy_cb(btc_msg_t *msg, void *p_dest, void *p_src)
{
    tBTA_DM_SEARCH_PARAM *p_dest_data = (tBTA_DM_SEARCH_PARAM *) p_dest;
    tBTA_DM_SEARCH_PARAM *p_src_data = (tBTA_DM_SEARCH_PARAM *) p_src;

    if (!p_src) {
        return;
    }
    p_dest_data->p_data = osi_malloc(p_dest_data->len);
    memset(p_dest_data->p_data, 0x00, p_dest_data->len);
    memcpy(p_dest_data->p_data, p_src_data->p_data, p_dest_data->len);
    if ( p_dest_data->len > sizeof(tBTA_DM_SEARCH)){
        switch (p_dest_data->event) {
        case 128: {
            if (p_src_data->p_data->disc_res.p_raw_data && p_src_data->p_data->disc_res.raw_data_size > 0) {
                p_dest_data->p_data->disc_res.p_raw_data = (UINT8 *)(p_dest_data->p_data) + sizeof(tBTA_DM_SEARCH);
                memcpy(p_dest_data->p_data->disc_res.p_raw_data,
                       p_src_data->p_data->disc_res.p_raw_data,
                       p_src_data->p_data->disc_res.raw_data_size);
            }
        }
        break;

        default:
            break;
        }
    }
}
