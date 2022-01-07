
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ remaining_in_len; scalar_t__ asf_packet_len; int in_buffer; } ;
typedef TYPE_1__ MMSContext ;


 int memset (int,int ,int) ;

__attribute__((used)) static void pad_media_packet(MMSContext *mms)
{
    if(mms->remaining_in_len<mms->asf_packet_len) {
        int padding_size = mms->asf_packet_len - mms->remaining_in_len;
        memset(mms->in_buffer + mms->remaining_in_len, 0, padding_size);
        mms->remaining_in_len += padding_size;
    }
}
