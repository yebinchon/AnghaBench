
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int VLC ;


 int INIT_VLC_LE ;
 int ff_free_vlc (int *) ;
 int ff_init_vlc_sparse (int *,int,int,int*,int,int,int *,int,int,int*,int,int,int ) ;
 int make_new_tree (int const*,int *) ;

__attribute__((used)) static int build_huff(const uint8_t *bitlen, VLC *vlc)
{
    uint32_t new_codes[256];
    uint8_t bits[256];
    uint8_t symbols[256];
    uint32_t codes[256];
    int nb_codes = 0;

    int ret = make_new_tree(bitlen, new_codes);
    if (ret < 0)
        return ret;

    for (int i = 0; i < 256; i++) {
        if (bitlen[i]) {
            bits[nb_codes] = bitlen[i];
            codes[nb_codes] = new_codes[i];
            symbols[nb_codes] = i;
            nb_codes++;
        }
    }

    ff_free_vlc(vlc);
    return ff_init_vlc_sparse(vlc, 13, nb_codes,
                              bits, 1, 1,
                              codes, 4, 4,
                              symbols, 1, 1,
                              INIT_VLC_LE);
}
