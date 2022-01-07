
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;







__attribute__((used)) static int btc_a2dp_sink_get_track_frequency(UINT8 frequency)
{
    int freq = 48000;
    switch (frequency) {
    case 131:
        freq = 16000;
        break;
    case 130:
        freq = 32000;
        break;
    case 129:
        freq = 44100;
        break;
    case 128:
        freq = 48000;
        break;
    }
    return freq;
}
