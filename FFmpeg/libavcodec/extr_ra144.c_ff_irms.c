
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_3__ {unsigned int (* scalarproduct_int16 ) (int const*,int const*,int ) ;} ;
typedef TYPE_1__ AudioDSPContext ;


 int BLOCKSIZE ;
 int ff_t_sqrt (unsigned int) ;
 unsigned int stub1 (int const*,int const*,int ) ;

int ff_irms(AudioDSPContext *adsp, const int16_t *data)
{
    unsigned int sum = adsp->scalarproduct_int16(data, data, BLOCKSIZE);

    if (sum == 0)
        return 0;

    return 0x20000000 / (ff_t_sqrt(sum) >> 8);
}
