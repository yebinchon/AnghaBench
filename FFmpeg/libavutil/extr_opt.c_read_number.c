
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {double dbl; } ;
struct TYPE_7__ {int type; TYPE_1__ default_val; } ;
struct TYPE_6__ {int num; int den; } ;
typedef TYPE_2__ AVRational ;
typedef TYPE_3__ AVOption ;


 int AVERROR (int ) ;
 int EINVAL ;

__attribute__((used)) static int read_number(const AVOption *o, const void *dst, double *num, int *den, int64_t *intnum)
{
    switch (o->type) {
    case 135:
        *intnum = *(unsigned int*)dst;
        return 0;
    case 131:
        *intnum = *(enum AVPixelFormat *)dst;
        return 0;
    case 129:
        *intnum = *(enum AVSampleFormat *)dst;
        return 0;
    case 140:
    case 133:
        *intnum = *(int *)dst;
        return 0;
    case 139:
    case 136:
    case 132:
    case 128:
        *intnum = *(int64_t *)dst;
        return 0;
    case 134:
        *num = *(float *)dst;
        return 0;
    case 137:
        *num = *(double *)dst;
        return 0;
    case 130:
        *intnum = ((AVRational *)dst)->num;
        *den = ((AVRational *)dst)->den;
        return 0;
    case 138:
        *num = o->default_val.dbl;
        return 0;
    }
    return AVERROR(EINVAL);
}
