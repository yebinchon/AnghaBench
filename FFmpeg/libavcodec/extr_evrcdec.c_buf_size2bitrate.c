
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int evrc_packet_rate ;


 int RATE_ERRS ;
 int RATE_FULL ;
 int RATE_HALF ;
 int RATE_QUANT ;
 int RATE_QUARTER ;
 int SILENCE ;

__attribute__((used)) static evrc_packet_rate buf_size2bitrate(const int buf_size)
{
    switch (buf_size) {
    case 23: return RATE_FULL;
    case 11: return RATE_HALF;
    case 6: return RATE_QUARTER;
    case 3: return RATE_QUANT;
    case 1: return SILENCE;
    }

    return RATE_ERRS;
}
