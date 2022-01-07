
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterLink ;


 int config_filter (int *,int) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    return config_filter(outlink, 1);
}
