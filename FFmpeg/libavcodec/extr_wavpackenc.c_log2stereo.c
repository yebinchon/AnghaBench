
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;


 int UINT32_MAX ;
 int abs (int ) ;
 scalar_t__ log2sample (int ,int,int *) ;

__attribute__((used)) static uint32_t log2stereo(int32_t *samples_l, int32_t *samples_r,
                           int nb_samples, int limit)
{
    uint32_t result = 0;
    while (nb_samples--) {
        if (log2sample(abs(*samples_l++), limit, &result) ||
            log2sample(abs(*samples_r++), limit, &result))
            return UINT32_MAX;
    }
    return result;
}
