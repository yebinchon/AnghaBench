
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int srtp_enabled; int srtp; } ;
typedef TYPE_1__ RTPDemuxContext ;


 int ff_srtp_set_crypto (int *,char const*,char const*) ;

void ff_rtp_parse_set_crypto(RTPDemuxContext *s, const char *suite,
                             const char *params)
{
    if (!ff_srtp_set_crypto(&s->srtp, suite, params))
        s->srtp_enabled = 1;
}
