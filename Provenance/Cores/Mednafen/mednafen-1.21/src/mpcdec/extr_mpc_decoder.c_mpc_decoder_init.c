
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpc_streaminfo ;
typedef int mpc_decoder ;


 int LUT_DEPTH ;
 int huff_init_lut (int ) ;
 int * malloc (int) ;
 int mpc_decoder_set_streaminfo (int *,int *) ;
 int mpc_decoder_setup (int *) ;

mpc_decoder * mpc_decoder_init(mpc_streaminfo *si)
{
 mpc_decoder* p_tmp = malloc(sizeof(mpc_decoder));

 if (p_tmp != 0) {
  mpc_decoder_setup(p_tmp);
  mpc_decoder_set_streaminfo(p_tmp, si);
  huff_init_lut(LUT_DEPTH);
 }

 return p_tmp;
}
