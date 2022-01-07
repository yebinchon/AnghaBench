
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {scalar_t__ asf_header_read_size; scalar_t__ asf_header_size; scalar_t__ remaining_in_len; scalar_t__ asf_packet_len; } ;
struct TYPE_10__ {TYPE_3__ mms; } ;
typedef TYPE_2__ MMSTContext ;
typedef TYPE_3__ MMSContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_TRACE ;
 int EIO ;
 int SC_PKT_ASF_MEDIA ;
 int av_log (TYPE_1__*,int ,char*,...) ;
 int ff_mms_read_data (TYPE_3__*,int *,int) ;
 int ff_mms_read_header (TYPE_3__*,int *,int) ;
 int mms_safe_send_recv (TYPE_2__*,int *,int ) ;

__attribute__((used)) static int mms_read(URLContext *h, uint8_t *buf, int size)
{

    MMSTContext *mmst = h->priv_data;
    MMSContext *mms = &mmst->mms;
    int result = 0;

    do {
        if(mms->asf_header_read_size < mms->asf_header_size) {

            result = ff_mms_read_header(mms, buf, size);
        } else if(mms->remaining_in_len) {


            result = ff_mms_read_data(mms, buf, size);
        } else {

            int err = mms_safe_send_recv(mmst, ((void*)0), SC_PKT_ASF_MEDIA);
            if (err == 0) {
                if(mms->remaining_in_len>mms->asf_packet_len) {
                    av_log(h, AV_LOG_ERROR,
                           "Incoming pktlen %d is larger than ASF pktsize %d\n",
                           mms->remaining_in_len, mms->asf_packet_len);
                    result= AVERROR(EIO);
                } else {

                    result = ff_mms_read_data(mms, buf, size);
                    if (result == 0) {
                        av_log(h, AV_LOG_TRACE, "Read ASF media packet size is zero!\n");
                        break;
                    }
                }
            } else {
                av_log(h, AV_LOG_TRACE, "read packet error!\n");
                break;
            }
        }
    } while(!result);
    return result;
}
