
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* DCTBLOCK ;


 int DCTSTRIDE ;

void ff_j_rev_dct2(DCTBLOCK data){
  int d00, d01, d10, d11;

  data[0] += 4;
  d00 = data[0+0*DCTSTRIDE] + data[1+0*DCTSTRIDE];
  d01 = data[0+0*DCTSTRIDE] - data[1+0*DCTSTRIDE];
  d10 = data[0+1*DCTSTRIDE] + data[1+1*DCTSTRIDE];
  d11 = data[0+1*DCTSTRIDE] - data[1+1*DCTSTRIDE];

  data[0+0*DCTSTRIDE]= (d00 + d10)>>3;
  data[1+0*DCTSTRIDE]= (d01 + d11)>>3;
  data[0+1*DCTSTRIDE]= (d00 - d10)>>3;
  data[1+1*DCTSTRIDE]= (d01 - d11)>>3;
}
