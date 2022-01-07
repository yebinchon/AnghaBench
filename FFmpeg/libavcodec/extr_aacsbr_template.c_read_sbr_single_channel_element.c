
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int bs_add_harmonic; scalar_t__ bs_add_harmonic_flag; } ;
struct TYPE_13__ {int * n; TYPE_4__* data; } ;
typedef TYPE_1__ SpectralBandReplication ;
typedef int GetBitContext ;
typedef int AACContext ;


 scalar_t__ get_bits1 (int *) ;
 int get_bits1_vector (int *,int ,int ) ;
 int read_sbr_dtdf (TYPE_1__*,int *,TYPE_4__*) ;
 int read_sbr_envelope (int *,TYPE_1__*,int *,TYPE_4__*,int ) ;
 scalar_t__ read_sbr_grid (int *,TYPE_1__*,int *,TYPE_4__*) ;
 int read_sbr_invf (TYPE_1__*,int *,TYPE_4__*) ;
 int read_sbr_noise (int *,TYPE_1__*,int *,TYPE_4__*,int ) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static int read_sbr_single_channel_element(AACContext *ac,
                                            SpectralBandReplication *sbr,
                                            GetBitContext *gb)
{
    int ret;

    if (get_bits1(gb))
        skip_bits(gb, 4);

    if (read_sbr_grid(ac, sbr, gb, &sbr->data[0]))
        return -1;
    read_sbr_dtdf(sbr, gb, &sbr->data[0]);
    read_sbr_invf(sbr, gb, &sbr->data[0]);
    if((ret = read_sbr_envelope(ac, sbr, gb, &sbr->data[0], 0)) < 0)
        return ret;
    if((ret = read_sbr_noise(ac, sbr, gb, &sbr->data[0], 0)) < 0)
        return ret;

    if ((sbr->data[0].bs_add_harmonic_flag = get_bits1(gb)))
        get_bits1_vector(gb, sbr->data[0].bs_add_harmonic, sbr->n[1]);

    return 0;
}
