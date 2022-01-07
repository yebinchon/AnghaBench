
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct rgbvec {float r; float g; float b; } ;
typedef int line ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int lutsize; struct rgbvec* lut; } ;
typedef TYPE_1__ LUT3DContext ;
typedef int FILE ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int MAX_LEVEL ;
 int MAX_LINE_SIZE ;
 int NEXT_LINE (int ) ;
 int SET_COLOR (int) ;
 int allocate_3dlut (TYPE_2__*,int) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int av_sscanf (char*,char*,float*,float*,float*) ;
 scalar_t__ fgets (char*,int,int *) ;
 int strncmp (char*,char*,int) ;
 int strtol (char*,int *,int ) ;

__attribute__((used)) static int parse_m3d(AVFilterContext *ctx, FILE *f)
{
    LUT3DContext *lut3d = ctx->priv;
    float scale;
    int ret, i, j, k, size, size2, in = -1, out = -1;
    char line[MAX_LINE_SIZE];
    uint8_t rgb_map[3] = {0, 1, 2};

    while (fgets(line, sizeof(line), f)) {
        if (!strncmp(line, "in", 2)) in = strtol(line + 2, ((void*)0), 0);
        else if (!strncmp(line, "out", 3)) out = strtol(line + 3, ((void*)0), 0);
        else if (!strncmp(line, "values", 6)) {
            const char *p = line + 6;
            do { while (av_isspace(*p)) p++; switch (*p) { case 'r': rgb_map[0] = 0; break; case 'g': rgb_map[0] = 1; break; case 'b': rgb_map[0] = 2; break; } while (*p && !av_isspace(*p)) p++; } while (0);
            do { while (av_isspace(*p)) p++; switch (*p) { case 'r': rgb_map[1] = 0; break; case 'g': rgb_map[1] = 1; break; case 'b': rgb_map[1] = 2; break; } while (*p && !av_isspace(*p)) p++; } while (0);
            do { while (av_isspace(*p)) p++; switch (*p) { case 'r': rgb_map[2] = 0; break; case 'g': rgb_map[2] = 1; break; case 'b': rgb_map[2] = 2; break; } while (*p && !av_isspace(*p)) p++; } while (0);
            break;
        }
    }

    if (in == -1 || out == -1) {
        av_log(ctx, AV_LOG_ERROR, "in and out must be defined\n");
        return AVERROR_INVALIDDATA;
    }
    if (in < 2 || out < 2 ||
        in > MAX_LEVEL*MAX_LEVEL*MAX_LEVEL ||
        out > MAX_LEVEL*MAX_LEVEL*MAX_LEVEL) {
        av_log(ctx, AV_LOG_ERROR, "invalid in (%d) or out (%d)\n", in, out);
        return AVERROR_INVALIDDATA;
    }
    for (size = 1; size*size*size < in; size++);
    lut3d->lutsize = size;
    size2 = size * size;

    ret = allocate_3dlut(ctx, size);
    if (ret < 0)
        return ret;

    scale = 1. / (out - 1);

    for (k = 0; k < size; k++) {
        for (j = 0; j < size; j++) {
            for (i = 0; i < size; i++) {
                struct rgbvec *vec = &lut3d->lut[k * size2 + j * size + i];
                float val[3];

                NEXT_LINE(0);
                if (av_sscanf(line, "%f %f %f", val, val + 1, val + 2) != 3)
                    return AVERROR_INVALIDDATA;
                vec->r = val[rgb_map[0]] * scale;
                vec->g = val[rgb_map[1]] * scale;
                vec->b = val[rgb_map[2]] * scale;
            }
        }
    }
    return 0;
}
