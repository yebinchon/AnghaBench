
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int enable_conf_interval; int n_subsample; int n_threads; int pool; int ms_ssim; int ssim; int psnr; int phone_model; int enable_transform; int log_fmt; int log_path; int model_path; int height; int width; int vmaf_score; int error; TYPE_2__* desc; } ;
struct TYPE_7__ {scalar_t__ name; TYPE_1__* comp; } ;
struct TYPE_6__ {int depth; } ;
typedef TYPE_3__ LIBVMAFContext ;


 int compute_vmaf (int *,char*,int ,int ,int (*) (float*,float*,float*,int,void*),TYPE_3__*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int read_frame_10bit (float*,float*,float*,int,void*) ;
 int read_frame_8bit (float*,float*,float*,int,void*) ;

__attribute__((used)) static void compute_vmaf_score(LIBVMAFContext *s)
{
    int (*read_frame)(float *ref_data, float *main_data, float *temp_data,
                      int stride, void *ctx);
    char *format;

    if (s->desc->comp[0].depth <= 8) {
        read_frame = read_frame_8bit;
    } else {
        read_frame = read_frame_10bit;
    }

    format = (char *) s->desc->name;

    s->error = compute_vmaf(&s->vmaf_score, format, s->width, s->height,
                            read_frame, s, s->model_path, s->log_path,
                            s->log_fmt, 0, 0, s->enable_transform,
                            s->phone_model, s->psnr, s->ssim,
                            s->ms_ssim, s->pool,
                            s->n_threads, s->n_subsample, s->enable_conf_interval);
}
