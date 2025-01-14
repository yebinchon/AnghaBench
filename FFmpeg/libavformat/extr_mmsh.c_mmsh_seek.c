
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {scalar_t__ asf_header_read_size; scalar_t__ remaining_in_len; scalar_t__ asf_packet_len; } ;
struct TYPE_6__ {scalar_t__ chunk_seq; TYPE_3__ mms; } ;
typedef TYPE_2__ MMSHContext ;
typedef TYPE_3__ MMSContext ;


 scalar_t__ AVERROR (int ) ;
 int ENOSYS ;
 int SEEK_CUR ;

__attribute__((used)) static int64_t mmsh_seek(URLContext *h, int64_t pos, int whence)
{
    MMSHContext *mmsh = h->priv_data;
    MMSContext *mms = &mmsh->mms;

    if(pos == 0 && whence == SEEK_CUR)
        return mms->asf_header_read_size + mms->remaining_in_len + mmsh->chunk_seq * (int64_t)mms->asf_packet_len;
    return AVERROR(ENOSYS);
}
