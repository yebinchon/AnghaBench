
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_fifo; int fifo_options; } ;
typedef TYPE_1__ TeeSlave ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_dict_parse_string (int *,char const*,char*,char*,int ) ;
 scalar_t__ av_match_name (char const*,char*) ;

__attribute__((used)) static int parse_slave_fifo_options(const char *use_fifo,
                                    const char *fifo_options, TeeSlave *tee_slave)
{
    int ret = 0;

    if (use_fifo) {


        if (av_match_name(use_fifo, "true,y,yes,enable,enabled,on,1")) {
            tee_slave->use_fifo = 1;
        } else if (av_match_name(use_fifo, "false,n,no,disable,disabled,off,0")) {
            tee_slave->use_fifo = 0;
        } else {
            return AVERROR(EINVAL);
        }
    }

    if (fifo_options)
        ret = av_dict_parse_string(&tee_slave->fifo_options, fifo_options, "=", ":", 0);

    return ret;
}
