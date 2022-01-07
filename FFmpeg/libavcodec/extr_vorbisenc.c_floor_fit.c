
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int multiplier; int values; TYPE_1__* list; } ;
typedef TYPE_2__ vorbis_enc_floor ;
struct TYPE_9__ {float quality; } ;
typedef TYPE_3__ vorbis_enc_context ;
typedef int uint16_t ;
struct TYPE_7__ {size_t sort; int x; } ;


 int MAX_FLOOR_VALUES ;
 float* ff_vorbis_floor1_inverse_db_table ;
 float get_floor_average (TYPE_2__*,float*,int) ;
 float pow (float,int) ;
 float sqrt (float) ;

__attribute__((used)) static void floor_fit(vorbis_enc_context *venc, vorbis_enc_floor *fc,
                      float *coeffs, uint16_t *posts, int samples)
{
    int range = 255 / fc->multiplier + 1;
    int i;
    float tot_average = 0.0;
    float averages[MAX_FLOOR_VALUES];
    for (i = 0; i < fc->values; i++) {
        averages[i] = get_floor_average(fc, coeffs, i);
        tot_average += averages[i];
    }
    tot_average /= fc->values;
    tot_average /= venc->quality;

    for (i = 0; i < fc->values; i++) {
        int position = fc->list[fc->list[i].sort].x;
        float average = averages[i];
        int j;

        average = sqrt(tot_average * average) * pow(1.25f, position*0.005f);
        for (j = 0; j < range - 1; j++)
            if (ff_vorbis_floor1_inverse_db_table[j * fc->multiplier] > average)
                break;
        posts[fc->list[i].sort] = j;
    }
}
