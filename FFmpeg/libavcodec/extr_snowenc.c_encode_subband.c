
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubBand ;
typedef int SnowContext ;
typedef int IDWTELEM ;


 int encode_subband_c0run (int *,int *,int const*,int const*,int,int) ;

__attribute__((used)) static int encode_subband(SnowContext *s, SubBand *b, const IDWTELEM *src, const IDWTELEM *parent, int stride, int orientation){


    return encode_subband_c0run(s, b, src, parent, stride, orientation);

}
