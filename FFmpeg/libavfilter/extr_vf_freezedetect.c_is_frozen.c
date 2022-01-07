
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef double uint64_t ;
struct TYPE_7__ {int * linesize; int * data; } ;
struct TYPE_6__ {int* width; double* height; unsigned long long bitdepth; double noise; int (* sad ) (int ,int ,int ,int ,int,double,double*) ;} ;
typedef TYPE_1__ FreezeDetectContext ;
typedef TYPE_2__ AVFrame ;


 int emms_c () ;
 int stub1 (int ,int ,int ,int ,int,double,double*) ;

__attribute__((used)) static int is_frozen(FreezeDetectContext *s, AVFrame *reference, AVFrame *frame)
{
    uint64_t sad = 0;
    uint64_t count = 0;
    double mafd;
    for (int plane = 0; plane < 4; plane++) {
        if (s->width[plane]) {
            uint64_t plane_sad;
            s->sad(frame->data[plane], frame->linesize[plane],
                   reference->data[plane], reference->linesize[plane],
                   s->width[plane], s->height[plane], &plane_sad);
            sad += plane_sad;
            count += s->width[plane] * s->height[plane];
        }
    }
    emms_c();
    mafd = (double)sad / count / (1ULL << s->bitdepth);
    return (mafd <= s->noise);
}
