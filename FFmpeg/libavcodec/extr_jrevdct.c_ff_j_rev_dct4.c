
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;
typedef int int16_t ;
typedef int* DCTBLOCK ;


 int AV_WN32A (int *,int) ;
 int CONST_BITS ;
 int DCTSIZE ;
 size_t DCTSTRIDE ;
 scalar_t__ DESCALE (int,int) ;
 int FIX_0_541196100 ;
 int FIX_0_765366865 ;
 int FIX_1_306562965 ;
 int FIX_1_847759065 ;
 int MULTIPLY (int,int ) ;
 int PASS1_BITS ;

void ff_j_rev_dct4(DCTBLOCK data)
{
  int32_t tmp0, tmp1, tmp2, tmp3;
  int32_t tmp10, tmp11, tmp12, tmp13;
  int32_t z1;
  int32_t d0, d2, d4, d6;
  register int16_t *dataptr;
  int rowctr;





  data[0] += 4;

  dataptr = data;

  for (rowctr = DCTSIZE-1; rowctr >= 0; rowctr--) {
    register uint8_t *idataptr = (uint8_t*)dataptr;

    d0 = dataptr[0];
    d2 = dataptr[1];
    d4 = dataptr[2];
    d6 = dataptr[3];

    if ((d2 | d4 | d6) == 0) {

      if (d0) {

          int16_t dcval = (int16_t) (d0 << PASS1_BITS);
          register int v = (dcval & 0xffff) | ((dcval << 16) & 0xffff0000);

          AV_WN32A(&idataptr[0], v);
          AV_WN32A(&idataptr[4], v);
      }

      dataptr += DCTSTRIDE;
      continue;
    }



    if (d6) {
            if (d2) {

                    z1 = MULTIPLY(d2 + d6, FIX_0_541196100);
                    tmp2 = z1 + MULTIPLY(-d6, FIX_1_847759065);
                    tmp3 = z1 + MULTIPLY(d2, FIX_0_765366865);

                    tmp0 = (d0 + d4) << CONST_BITS;
                    tmp1 = (d0 - d4) << CONST_BITS;

                    tmp10 = tmp0 + tmp3;
                    tmp13 = tmp0 - tmp3;
                    tmp11 = tmp1 + tmp2;
                    tmp12 = tmp1 - tmp2;
            } else {

                    tmp2 = MULTIPLY(-d6, FIX_1_306562965);
                    tmp3 = MULTIPLY(d6, FIX_0_541196100);

                    tmp0 = (d0 + d4) << CONST_BITS;
                    tmp1 = (d0 - d4) << CONST_BITS;

                    tmp10 = tmp0 + tmp3;
                    tmp13 = tmp0 - tmp3;
                    tmp11 = tmp1 + tmp2;
                    tmp12 = tmp1 - tmp2;
            }
    } else {
            if (d2) {

                    tmp2 = MULTIPLY(d2, FIX_0_541196100);
                    tmp3 = MULTIPLY(d2, FIX_1_306562965);

                    tmp0 = (d0 + d4) << CONST_BITS;
                    tmp1 = (d0 - d4) << CONST_BITS;

                    tmp10 = tmp0 + tmp3;
                    tmp13 = tmp0 - tmp3;
                    tmp11 = tmp1 + tmp2;
                    tmp12 = tmp1 - tmp2;
            } else {

                    tmp10 = tmp13 = (d0 + d4) << CONST_BITS;
                    tmp11 = tmp12 = (d0 - d4) << CONST_BITS;
            }
      }



    dataptr[0] = (int16_t) DESCALE(tmp10, CONST_BITS-PASS1_BITS);
    dataptr[1] = (int16_t) DESCALE(tmp11, CONST_BITS-PASS1_BITS);
    dataptr[2] = (int16_t) DESCALE(tmp12, CONST_BITS-PASS1_BITS);
    dataptr[3] = (int16_t) DESCALE(tmp13, CONST_BITS-PASS1_BITS);

    dataptr += DCTSTRIDE;
  }





  dataptr = data;
  for (rowctr = DCTSIZE-1; rowctr >= 0; rowctr--) {
    d0 = dataptr[DCTSTRIDE*0];
    d2 = dataptr[DCTSTRIDE*1];
    d4 = dataptr[DCTSTRIDE*2];
    d6 = dataptr[DCTSTRIDE*3];



    if (d6) {
            if (d2) {

                    z1 = MULTIPLY(d2 + d6, FIX_0_541196100);
                    tmp2 = z1 + MULTIPLY(-d6, FIX_1_847759065);
                    tmp3 = z1 + MULTIPLY(d2, FIX_0_765366865);

                    tmp0 = (d0 + d4) << CONST_BITS;
                    tmp1 = (d0 - d4) << CONST_BITS;

                    tmp10 = tmp0 + tmp3;
                    tmp13 = tmp0 - tmp3;
                    tmp11 = tmp1 + tmp2;
                    tmp12 = tmp1 - tmp2;
            } else {

                    tmp2 = MULTIPLY(-d6, FIX_1_306562965);
                    tmp3 = MULTIPLY(d6, FIX_0_541196100);

                    tmp0 = (d0 + d4) << CONST_BITS;
                    tmp1 = (d0 - d4) << CONST_BITS;

                    tmp10 = tmp0 + tmp3;
                    tmp13 = tmp0 - tmp3;
                    tmp11 = tmp1 + tmp2;
                    tmp12 = tmp1 - tmp2;
            }
    } else {
            if (d2) {

                    tmp2 = MULTIPLY(d2, FIX_0_541196100);
                    tmp3 = MULTIPLY(d2, FIX_1_306562965);

                    tmp0 = (d0 + d4) << CONST_BITS;
                    tmp1 = (d0 - d4) << CONST_BITS;

                    tmp10 = tmp0 + tmp3;
                    tmp13 = tmp0 - tmp3;
                    tmp11 = tmp1 + tmp2;
                    tmp12 = tmp1 - tmp2;
            } else {

                    tmp10 = tmp13 = (d0 + d4) << CONST_BITS;
                    tmp11 = tmp12 = (d0 - d4) << CONST_BITS;
            }
    }



    dataptr[DCTSTRIDE*0] = tmp10 >> (CONST_BITS+PASS1_BITS+3);
    dataptr[DCTSTRIDE*1] = tmp11 >> (CONST_BITS+PASS1_BITS+3);
    dataptr[DCTSTRIDE*2] = tmp12 >> (CONST_BITS+PASS1_BITS+3);
    dataptr[DCTSTRIDE*3] = tmp13 >> (CONST_BITS+PASS1_BITS+3);

    dataptr++;
  }
}
