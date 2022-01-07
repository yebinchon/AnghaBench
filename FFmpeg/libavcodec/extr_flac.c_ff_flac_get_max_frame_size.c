
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int ff_flac_get_max_frame_size(int blocksize, int ch, int bps)
{




    int count;

    count = 16;
    count += ch * ((7+bps+7)/8);
    if (ch == 2) {

        count += (( 2*bps+1) * blocksize + 7) / 8;
    } else {
        count += ( ch*bps * blocksize + 7) / 8;
    }
    count += 2;

    return count;
}
