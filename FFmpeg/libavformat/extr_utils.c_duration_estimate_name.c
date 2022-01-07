
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVDurationEstimationMethod { ____Placeholder_AVDurationEstimationMethod } AVDurationEstimationMethod ;


 char const** duration_name ;

__attribute__((used)) static const char *duration_estimate_name(enum AVDurationEstimationMethod method)
{
    return duration_name[method];
}
