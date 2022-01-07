
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_7__ {int asf_header; int streams; scalar_t__ mms_hd; } ;
struct TYPE_6__ {TYPE_3__ mms; } ;
typedef TYPE_2__ MMSHContext ;
typedef TYPE_3__ MMSContext ;


 int av_freep (int *) ;
 int ffurl_closep (scalar_t__*) ;

__attribute__((used)) static int mmsh_close(URLContext *h)
{
    MMSHContext *mmsh = (MMSHContext *)h->priv_data;
    MMSContext *mms = &mmsh->mms;
    if (mms->mms_hd)
        ffurl_closep(&mms->mms_hd);
    av_freep(&mms->streams);
    av_freep(&mms->asf_header);
    return 0;
}
