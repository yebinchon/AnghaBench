
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int VLC ;


 int ff_free_vlc (int *) ;
 int ff_init_vlc_sparse (int *,int,int,int*,int,int,int*,int,int,int*,int,int,int ) ;

__attribute__((used)) static int build_vlc(VLC *vlc, const uint8_t *len, int count)
{
    uint32_t codes[1024];
    uint8_t bits[1024];
    uint16_t syms[1024];
    uint64_t index;
    int i;

    index = 0;
    for (i = 0; i < count; i++) {
        codes[i] = index >> (32 - len[i]);
        bits[i] = len[i];
        syms[i] = i;
        index += 1ULL << (32 - len[i]);
    }

    ff_free_vlc(vlc);
    return ff_init_vlc_sparse(vlc, 16, count,
                              bits, sizeof(*bits), sizeof(*bits),
                              codes, sizeof(*codes), sizeof(*codes),
                              syms, sizeof(*syms), sizeof(*syms), 0);
}
