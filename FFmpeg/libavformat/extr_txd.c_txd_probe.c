
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf; } ;
typedef TYPE_1__ AVProbeData ;


 int AVPROBE_SCORE_MAX ;
 scalar_t__ AV_RL32 (scalar_t__) ;
 scalar_t__ TXD_FILE ;
 scalar_t__ TXD_MARKER ;
 scalar_t__ TXD_MARKER2 ;

__attribute__((used)) static int txd_probe(const AVProbeData * pd) {
    if (AV_RL32(pd->buf ) == TXD_FILE &&
       (AV_RL32(pd->buf+8) == TXD_MARKER || AV_RL32(pd->buf+8) == TXD_MARKER2))
        return AVPROBE_SCORE_MAX;
    return 0;
}
