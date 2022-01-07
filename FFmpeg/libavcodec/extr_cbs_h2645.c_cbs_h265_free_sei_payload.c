
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int data_ref; } ;
struct TYPE_8__ {int data_ref; } ;
struct TYPE_7__ {int data_ref; } ;
struct TYPE_10__ {TYPE_3__ other; TYPE_2__ user_data_unregistered; TYPE_1__ user_data_registered; } ;
struct TYPE_11__ {int payload_type; TYPE_4__ payload; } ;
typedef TYPE_5__ H265RawSEIPayload ;
 int av_buffer_unref (int *) ;

__attribute__((used)) static void cbs_h265_free_sei_payload(H265RawSEIPayload *payload)
{
    switch (payload->payload_type) {
    case 138:
    case 132:
    case 133:
    case 131:
    case 135:
    case 141:
    case 136:
    case 130:
    case 134:
    case 137:
    case 139:
    case 140:
        break;
    case 129:
        av_buffer_unref(&payload->payload.user_data_registered.data_ref);
        break;
    case 128:
        av_buffer_unref(&payload->payload.user_data_unregistered.data_ref);
        break;
    default:
        av_buffer_unref(&payload->payload.other.data_ref);
        break;
    }
}
