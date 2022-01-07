
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int mms_hd; scalar_t__ in_buffer; } ;
struct TYPE_4__ {int header_packet_id; TYPE_2__ mms; } ;
typedef TYPE_1__ MMSTContext ;
typedef TYPE_2__ MMSContext ;


 int AV_LOG_TRACE ;
 int AV_RL32 (scalar_t__) ;
 int av_log (int ,int ,char*,...) ;

__attribute__((used)) static void handle_packet_stream_changing_type(MMSTContext *mmst)
{
    MMSContext *mms = &mmst->mms;
    av_log(mms->mms_hd, AV_LOG_TRACE, "Stream changing!\n");


    mmst->header_packet_id= AV_RL32(mms->in_buffer + 40 + 7);
    av_log(mms->mms_hd, AV_LOG_TRACE, "Changed header prefix to 0x%x", mmst->header_packet_id);
}
