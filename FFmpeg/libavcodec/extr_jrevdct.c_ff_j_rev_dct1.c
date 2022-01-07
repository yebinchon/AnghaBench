
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* DCTBLOCK ;



void ff_j_rev_dct1(DCTBLOCK data){
  data[0] = (data[0] + 4)>>3;
}
