
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PixblockDSPContext ;
typedef int AVCodecContext ;


 int pixblockdsp_init_mmi (int *,int *,unsigned int) ;
 int pixblockdsp_init_msa (int *,int *,unsigned int) ;

void ff_pixblockdsp_init_mips(PixblockDSPContext *c, AVCodecContext *avctx,
                              unsigned high_bit_depth)
{






}
