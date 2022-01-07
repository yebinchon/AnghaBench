
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* on_fail; } ;
typedef TYPE_1__ TeeSlave ;


 int AVERROR (int ) ;
 void* DEFAULT_SLAVE_FAILURE_POLICY ;
 int EINVAL ;
 void* ON_SLAVE_FAILURE_ABORT ;
 void* ON_SLAVE_FAILURE_IGNORE ;
 int av_strcasecmp (char*,char const*) ;

__attribute__((used)) static inline int parse_slave_failure_policy_option(const char *opt, TeeSlave *tee_slave)
{
    if (!opt) {
        tee_slave->on_fail = DEFAULT_SLAVE_FAILURE_POLICY;
        return 0;
    } else if (!av_strcasecmp("abort", opt)) {
        tee_slave->on_fail = ON_SLAVE_FAILURE_ABORT;
        return 0;
    } else if (!av_strcasecmp("ignore", opt)) {
        tee_slave->on_fail = ON_SLAVE_FAILURE_IGNORE;
        return 0;
    }

    tee_slave->on_fail = ON_SLAVE_FAILURE_ABORT;
    return AVERROR(EINVAL);
}
