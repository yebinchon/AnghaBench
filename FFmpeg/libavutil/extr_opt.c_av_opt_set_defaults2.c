
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int i64; double dbl; int str; } ;
struct TYPE_15__ {int offset; int flags; int type; int name; TYPE_1__ default_val; } ;
struct TYPE_14__ {int den; int num; } ;
typedef TYPE_2__ AVRational ;
typedef TYPE_3__ AVOption ;


 int AV_LOG_DEBUG ;
 int AV_OPT_FLAG_READONLY ;
 int INT_MAX ;
 TYPE_2__ av_d2q (double,int ) ;
 int av_log (void*,int ,char*,int,int ) ;
 TYPE_3__* av_opt_next (void*,TYPE_3__ const*) ;
 int set_string (void*,TYPE_3__ const*,int ,void*) ;
 int set_string_binary (void*,TYPE_3__ const*,int ,void*) ;
 int set_string_color (void*,TYPE_3__ const*,int ,void*) ;
 int set_string_image_size (void*,TYPE_3__ const*,int ,void*) ;
 int set_string_video_rate (void*,TYPE_3__ const*,int ,void*) ;
 int write_number (void*,TYPE_3__ const*,void*,int,int,int) ;

void av_opt_set_defaults2(void *s, int mask, int flags)
{
    const AVOption *opt = ((void*)0);
    while ((opt = av_opt_next(s, opt))) {
        void *dst = ((uint8_t*)s) + opt->offset;

        if ((opt->flags & mask) != flags)
            continue;

        if (opt->flags & AV_OPT_FLAG_READONLY)
            continue;

        switch (opt->type) {
            case 142:

                break;
            case 145:
            case 138:
            case 135:
            case 134:
            case 129:
            case 139:
            case 144:
            case 133:
            case 131:
                write_number(s, opt, dst, 1, 1, opt->default_val.i64);
                break;
            case 140:
            case 137: {
                double val;
                val = opt->default_val.dbl;
                write_number(s, opt, dst, val, 1, 1);
            }
            break;
            case 132: {
                AVRational val;
                val = av_d2q(opt->default_val.dbl, INT_MAX);
                write_number(s, opt, dst, 1, val.den, val.num);
            }
            break;
            case 143:
                set_string_color(s, opt, opt->default_val.str, dst);
                break;
            case 130:
                set_string(s, opt, opt->default_val.str, dst);
                break;
            case 136:
                set_string_image_size(s, opt, opt->default_val.str, dst);
                break;
            case 128:
                set_string_video_rate(s, opt, opt->default_val.str, dst);
                break;
            case 146:
                set_string_binary(s, opt, opt->default_val.str, dst);
                break;
            case 141:

            break;
        default:
            av_log(s, AV_LOG_DEBUG, "AVOption type %d of option %s not implemented yet\n",
                   opt->type, opt->name);
        }
    }
}
