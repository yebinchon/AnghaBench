
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int FFABS (int ) ;
 int INT16_MAX ;
 int cbrt (int ) ;

__attribute__((used)) static int get_cbrt_h2(int16_t sample, int height)
{
    return cbrt(FFABS(sample)) * height / cbrt(INT16_MAX);
}
