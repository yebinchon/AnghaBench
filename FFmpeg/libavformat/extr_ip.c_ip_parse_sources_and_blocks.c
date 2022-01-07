
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nb_exclude_addrs; scalar_t__ nb_include_addrs; int exclude_addrs; int include_addrs; } ;
typedef TYPE_1__ IPSourceFilters ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (void*,int ,char*) ;
 int ip_parse_addr_list (void*,char const*,int *,scalar_t__*) ;

__attribute__((used)) static int ip_parse_sources_and_blocks(void *log_ctx, const char *buf, IPSourceFilters *filters, int parse_include_list)
{
    int ret;
    if (parse_include_list)
        ret = ip_parse_addr_list(log_ctx, buf, &filters->include_addrs, &filters->nb_include_addrs);
    else
        ret = ip_parse_addr_list(log_ctx, buf, &filters->exclude_addrs, &filters->nb_exclude_addrs);

    if (ret >= 0 && filters->nb_include_addrs && filters->nb_exclude_addrs) {
        av_log(log_ctx, AV_LOG_ERROR, "Simultaneously including and excluding sources is not supported.\n");
        return AVERROR(EINVAL);
    }
    return ret;
}
