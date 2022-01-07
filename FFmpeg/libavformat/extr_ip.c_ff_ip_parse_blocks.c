
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IPSourceFilters ;


 int ip_parse_sources_and_blocks (void*,char const*,int *,int ) ;

int ff_ip_parse_blocks(void *log_ctx, const char *buf, IPSourceFilters *filters)
{
    return ip_parse_sources_and_blocks(log_ctx, buf, filters, 0);
}
