
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_assert0 (int) ;
 int* ff_flac_blocksize_table ;

__attribute__((used)) static int select_blocksize(int samplerate, int block_time_ms)
{
    int i;
    int target;
    int blocksize;

    av_assert0(samplerate > 0);
    blocksize = ff_flac_blocksize_table[1];
    target = (samplerate * block_time_ms) / 1000;
    for (i = 0; i < 16; i++) {
        if (target >= ff_flac_blocksize_table[i] &&
            ff_flac_blocksize_table[i] > blocksize) {
            blocksize = ff_flac_blocksize_table[i];
        }
    }
    return blocksize;
}
