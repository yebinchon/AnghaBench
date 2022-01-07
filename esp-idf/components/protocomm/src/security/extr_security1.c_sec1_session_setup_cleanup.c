
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int session_t ;
struct TYPE_10__ {TYPE_2__* sec1; } ;
struct TYPE_8__ {TYPE_2__* data; } ;
struct TYPE_9__ {int msg; TYPE_1__ device_verify_data; struct TYPE_9__* sr1; struct TYPE_9__* sr0; } ;
typedef TYPE_2__ SessionResp1 ;
typedef TYPE_2__ SessionResp0 ;
typedef TYPE_4__ SessionData ;
typedef TYPE_2__ Sec1Payload ;




 int free (TYPE_2__*) ;

__attribute__((used)) static void sec1_session_setup_cleanup(session_t *cur_session, uint32_t session_id, SessionData *resp)
{
    Sec1Payload *out = resp->sec1;

    if (!out) {
        return;
    }

    switch (out->msg) {
        case 129:
            {
                SessionResp0 *out_resp0 = out->sr0;
                if (out_resp0) {
                    free(out_resp0);
                }
                break;
            }
        case 128:
            {
                SessionResp1 *out_resp1 = out->sr1;
                if (out_resp1) {
                    free(out_resp1->device_verify_data.data);
                    free(out_resp1);
                }
                break;
            }
        default:
            break;
    }
    free(out);

    return;
}
