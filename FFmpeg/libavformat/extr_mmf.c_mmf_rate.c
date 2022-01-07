
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* mmf_rates ;

__attribute__((used)) static int mmf_rate(int code)
{
    if ((code < 0) || (code > 4))
        return -1;
    return mmf_rates[code];
}
