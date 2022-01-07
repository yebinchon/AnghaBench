
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_assert0 (int) ;

__attribute__((used)) static void extend_af(uint8_t *pkt, int size)
{

    av_assert0(pkt[3] & 0x20);
    pkt[4] += size;
}
