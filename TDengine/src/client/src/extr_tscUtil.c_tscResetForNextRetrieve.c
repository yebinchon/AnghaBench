
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numOfRows; scalar_t__ row; } ;
typedef TYPE_1__ SSqlRes ;



void tscResetForNextRetrieve(SSqlRes* pRes) {
  pRes->row = 0;
  pRes->numOfRows = 0;
}
