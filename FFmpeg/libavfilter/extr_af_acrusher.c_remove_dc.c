
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double remove_dc(double s, double dc, double idc)
{
    return s > 0 ? s * idc : s * dc;
}
