
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pb; } ;
typedef TYPE_1__ MpegEncContext ;


 int** ff_mpeg12_mbAddrIncrTable ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static inline void encode_mb_skip_run(MpegEncContext *s, int run)
{
    while (run >= 33) {
        put_bits(&s->pb, 11, 0x008);
        run -= 33;
    }
    put_bits(&s->pb, ff_mpeg12_mbAddrIncrTable[run][1],
             ff_mpeg12_mbAddrIncrTable[run][0]);
}
