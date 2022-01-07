
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t d; size_t k; int splitPoint; } ;
typedef TYPE_1__ ZDICT_cover_params_t ;



__attribute__((used)) static int COVER_checkParameters(ZDICT_cover_params_t parameters,
                                 size_t maxDictSize) {

  if (parameters.d == 0 || parameters.k == 0) {
    return 0;
  }

  if (parameters.k > maxDictSize) {
    return 0;
  }

  if (parameters.d > parameters.k) {
    return 0;
  }

  if (parameters.splitPoint <= 0 || parameters.splitPoint > 1){
    return 0;
  }
  return 1;
}
