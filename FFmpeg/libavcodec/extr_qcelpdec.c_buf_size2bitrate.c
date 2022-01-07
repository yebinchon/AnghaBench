
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qcelp_packet_rate ;


 int I_F_Q ;
 int RATE_FULL ;
 int RATE_HALF ;
 int RATE_OCTAVE ;
 int RATE_QUARTER ;
 int SILENCE ;

__attribute__((used)) static qcelp_packet_rate buf_size2bitrate(const int buf_size)
{
    switch (buf_size) {
    case 35: return RATE_FULL;
    case 17: return RATE_HALF;
    case 8: return RATE_QUARTER;
    case 4: return RATE_OCTAVE;
    case 1: return SILENCE;
    }

    return I_F_Q;
}
