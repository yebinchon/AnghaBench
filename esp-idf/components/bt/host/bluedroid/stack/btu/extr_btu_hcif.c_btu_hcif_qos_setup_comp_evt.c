
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_3__ {int delay_variation; int latency; int peak_bandwidth; int token_rate; int service_type; int qos_flags; } ;
typedef TYPE_1__ FLOW_SPEC ;


 int STREAM_TO_UINT16 (int ,int *) ;
 int STREAM_TO_UINT32 (int ,int *) ;
 int STREAM_TO_UINT8 (int ,int *) ;
 int btm_qos_setup_complete (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void btu_hcif_qos_setup_comp_evt (UINT8 *p)
{
    UINT8 status;
    UINT16 handle;
    FLOW_SPEC flow;

    STREAM_TO_UINT8 (status, p);
    STREAM_TO_UINT16 (handle, p);
    STREAM_TO_UINT8 (flow.qos_flags, p);
    STREAM_TO_UINT8 (flow.service_type, p);
    STREAM_TO_UINT32 (flow.token_rate, p);
    STREAM_TO_UINT32 (flow.peak_bandwidth, p);
    STREAM_TO_UINT32 (flow.latency, p);
    STREAM_TO_UINT32 (flow.delay_variation, p);

    btm_qos_setup_complete(status, handle, &flow);
}
