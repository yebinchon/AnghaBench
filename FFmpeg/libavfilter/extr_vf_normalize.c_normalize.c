
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_13__ {int** data; int height; int* linesize; int width; } ;
struct TYPE_12__ {size_t* co; int frame_num; int history_len; float independence; float* blackpt; float strength; float* whitept; int num_components; int step; TYPE_1__* max; TYPE_2__* min; } ;
struct TYPE_11__ {int in; float smoothed; float out; } ;
struct TYPE_10__ {float history_sum; int* history; } ;
struct TYPE_9__ {float history_sum; int* history; } ;
typedef TYPE_3__ NormalizeLocal ;
typedef TYPE_4__ NormalizeContext ;
typedef TYPE_5__ AVFrame ;


 void* FFMAX (int,size_t) ;
 float FFMAX3 (float,float,float) ;
 void* FFMIN (int,int) ;
 float FFMIN3 (float,float,float) ;

__attribute__((used)) static void normalize(NormalizeContext *s, AVFrame *in, AVFrame *out)
{

    NormalizeLocal min[3], max[3];

    float rgb_min_smoothed;
    float rgb_max_smoothed;
    uint8_t lut[3][256];
    int x, y, c;



    for (c = 0; c < 3; c++)
        min[c].in = max[c].in = in->data[0][s->co[c]];
    for (y = 0; y < in->height; y++) {
        uint8_t *inp = in->data[0] + y * in->linesize[0];
        for (x = 0; x < in->width; x++) {
            for (c = 0; c < 3; c++) {
                min[c].in = FFMIN(min[c].in, inp[s->co[c]]);
                max[c].in = FFMAX(max[c].in, inp[s->co[c]]);
            }
            inp += s->step;
        }
    }



    {
        int history_idx = s->frame_num % s->history_len;


        int num_history_vals = s->frame_num + 1;
        if (s->frame_num >= s->history_len) {

            for (c = 0; c < 3; c++) {
                s->min[c].history_sum -= s->min[c].history[history_idx];
                s->max[c].history_sum -= s->max[c].history[history_idx];
            }
            num_history_vals = s->history_len;
        }


        for (c = 0; c < 3; c++) {
            s->min[c].history_sum += (s->min[c].history[history_idx] = min[c].in);
            min[c].smoothed = s->min[c].history_sum / (float)num_history_vals;
            s->max[c].history_sum += (s->max[c].history[history_idx] = max[c].in);
            max[c].smoothed = s->max[c].history_sum / (float)num_history_vals;
        }
    }




    rgb_min_smoothed = FFMIN3(min[0].smoothed, min[1].smoothed, min[2].smoothed);
    rgb_max_smoothed = FFMAX3(max[0].smoothed, max[1].smoothed, max[2].smoothed);



    for (c = 0; c < 3; c++) {
        int in_val;



        min[c].smoothed = (min[c].smoothed * s->independence)
                        + (rgb_min_smoothed * (1.0f - s->independence));
        max[c].smoothed = (max[c].smoothed * s->independence)
                        + (rgb_max_smoothed * (1.0f - s->independence));




        min[c].out = (s->blackpt[c] * s->strength)
                   + (min[c].in * (1.0f - s->strength));
        max[c].out = (s->whitept[c] * s->strength)
                   + (max[c].in * (1.0f - s->strength));






        if (min[c].smoothed == max[c].smoothed) {

            for (in_val = min[c].in; in_val <= max[c].in; in_val++)
                lut[c][in_val] = min[c].out;
        } else {




            float scale = (max[c].out - min[c].out) / (max[c].smoothed - min[c].smoothed);
            for (in_val = min[c].in; in_val <= max[c].in; in_val++) {
                int out_val = (in_val - min[c].smoothed) * scale + min[c].out + 0.5f;
                out_val = FFMAX(out_val, 0);
                out_val = FFMIN(out_val, 255);
                lut[c][in_val] = out_val;
            }
        }
    }


    for (y = 0; y < in->height; y++) {
        uint8_t *inp = in->data[0] + y * in->linesize[0];
        uint8_t *outp = out->data[0] + y * out->linesize[0];
        for (x = 0; x < in->width; x++) {
            for (c = 0; c < 3; c++)
                outp[s->co[c]] = lut[c][inp[s->co[c]]];
            if (s->num_components == 4)

                outp[s->co[3]] = inp[s->co[3]];
            inp += s->step;
            outp += s->step;
        }
    }

    s->frame_num++;
}
