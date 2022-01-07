
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pt; char const* enc_name; } ;


 TYPE_1__* rtp_payload_types ;

const char *ff_rtp_enc_name(int payload_type)
{
    int i;

    for (i = 0; rtp_payload_types[i].pt >= 0; i++)
        if (rtp_payload_types[i].pt == payload_type)
            return rtp_payload_types[i].enc_name;

    return "";
}
