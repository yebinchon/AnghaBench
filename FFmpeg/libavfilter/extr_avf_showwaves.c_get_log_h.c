
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 scalar_t__ FFABS (int ) ;
 int FFSIGN (int ) ;
 scalar_t__ INT16_MAX ;
 int log10 (scalar_t__) ;

__attribute__((used)) static int get_log_h(int16_t sample, int height)
{
    return height/2 - FFSIGN(sample) * (log10(1 + FFABS(sample)) * (height/2) / log10(1 + INT16_MAX));
}
