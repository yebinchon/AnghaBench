
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_8__ {int asf_header; int streams; scalar_t__ mms_hd; } ;
struct TYPE_7__ {TYPE_3__ mms; } ;
typedef TYPE_2__ MMSTContext ;
typedef TYPE_3__ MMSContext ;


 int av_freep (int *) ;
 int ffurl_close (scalar_t__) ;
 int send_close_packet (TYPE_2__*) ;

__attribute__((used)) static int mms_close(URLContext *h)
{
    MMSTContext *mmst = (MMSTContext *)h->priv_data;
    MMSContext *mms = &mmst->mms;
    if(mms->mms_hd) {
        send_close_packet(mmst);
        ffurl_close(mms->mms_hd);
    }


    av_freep(&mms->streams);
    av_freep(&mms->asf_header);

    return 0;
}
