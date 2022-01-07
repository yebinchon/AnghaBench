
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_3__ {scalar_t__ transit; scalar_t__ jitter; scalar_t__ received_prior; scalar_t__ expected_prior; scalar_t__ received; scalar_t__ bad_seq; void* base_seq; scalar_t__ cycles; void* max_seq; } ;
typedef TYPE_1__ RTPStatistics ;


 scalar_t__ RTP_SEQ_MOD ;

__attribute__((used)) static void rtp_init_sequence(RTPStatistics *s, uint16_t seq)
{
    s->max_seq = seq;
    s->cycles = 0;
    s->base_seq = seq - 1;
    s->bad_seq = RTP_SEQ_MOD + 1;
    s->received = 0;
    s->expected_prior = 0;
    s->received_prior = 0;
    s->jitter = 0;
    s->transit = 0;
}
