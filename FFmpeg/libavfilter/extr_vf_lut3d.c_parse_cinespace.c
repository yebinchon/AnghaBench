
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rgbvec {int r; int g; int b; } ;
struct TYPE_9__ {TYPE_2__* priv; } ;
struct TYPE_7__ {void* b; void* g; void* r; } ;
struct TYPE_8__ {TYPE_1__ scale; struct rgbvec* lut; } ;
typedef TYPE_2__ LUT3DContext ;
typedef int FILE ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int MAX_LINE_SIZE ;
 int NEXT_LINE (int ) ;
 int allocate_3dlut (TYPE_3__*,int) ;
 void* av_clipf (int,float,float) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int av_sscanf (char*,char*,...) ;
 int skip_line (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int parse_cinespace(AVFilterContext *ctx, FILE *f)
{
    LUT3DContext *lut3d = ctx->priv;
    char line[MAX_LINE_SIZE];
    float in_min[3] = {0.0, 0.0, 0.0};
    float in_max[3] = {1.0, 1.0, 1.0};
    float out_min[3] = {0.0, 0.0, 0.0};
    float out_max[3] = {1.0, 1.0, 1.0};
    int ret, inside_metadata = 0, size, size2;

    NEXT_LINE(skip_line(line));
    if (strncmp(line, "CSPLUTV100", 10)) {
        av_log(ctx, AV_LOG_ERROR, "Not cineSpace LUT format\n");
        return AVERROR(EINVAL);
    }

    NEXT_LINE(skip_line(line));
    if (strncmp(line, "3D", 2)) {
        av_log(ctx, AV_LOG_ERROR, "Not 3D LUT format\n");
        return AVERROR(EINVAL);
    }

    while (1) {
        NEXT_LINE(skip_line(line));

        if (!strncmp(line, "BEGIN METADATA", 14)) {
            inside_metadata = 1;
            continue;
        }
        if (!strncmp(line, "END METADATA", 12)) {
            inside_metadata = 0;
            continue;
        }
        if (inside_metadata == 0) {
            int size_r, size_g, size_b;

            for (int i = 0; i < 3; i++) {
                int npoints = strtol(line, ((void*)0), 0);

                if (npoints != 2) {
                    av_log(ctx, AV_LOG_ERROR, "Unsupported number of pre-lut points.\n");
                    return AVERROR_PATCHWELCOME;
                }

                NEXT_LINE(skip_line(line));
                if (av_sscanf(line, "%f %f", &in_min[i], &in_max[i]) != 2)
                    return AVERROR_INVALIDDATA;
                NEXT_LINE(skip_line(line));
                if (av_sscanf(line, "%f %f", &out_min[i], &out_max[i]) != 2)
                    return AVERROR_INVALIDDATA;
                NEXT_LINE(skip_line(line));
            }

            if (av_sscanf(line, "%d %d %d", &size_r, &size_g, &size_b) != 3)
                return AVERROR(EINVAL);
            if (size_r != size_g || size_r != size_b) {
                av_log(ctx, AV_LOG_ERROR, "Unsupported size combination: %dx%dx%d.\n", size_r, size_g, size_b);
                return AVERROR_PATCHWELCOME;
            }

            size = size_r;
            size2 = size * size;

            ret = allocate_3dlut(ctx, size);
            if (ret < 0)
                return ret;

            for (int k = 0; k < size; k++) {
                for (int j = 0; j < size; j++) {
                    for (int i = 0; i < size; i++) {
                        struct rgbvec *vec = &lut3d->lut[i * size2 + j * size + k];
                        if (k != 0 || j != 0 || i != 0)
                            NEXT_LINE(skip_line(line));
                        if (av_sscanf(line, "%f %f %f", &vec->r, &vec->g, &vec->b) != 3)
                            return AVERROR_INVALIDDATA;
                        vec->r *= out_max[0] - out_min[0];
                        vec->g *= out_max[1] - out_min[1];
                        vec->b *= out_max[2] - out_min[2];
                    }
                }
            }

            break;
        }
    }

    lut3d->scale.r = av_clipf(1. / (in_max[0] - in_min[0]), 0.f, 1.f);
    lut3d->scale.g = av_clipf(1. / (in_max[1] - in_min[1]), 0.f, 1.f);
    lut3d->scale.b = av_clipf(1. / (in_max[2] - in_min[2]), 0.f, 1.f);

    return 0;
}
