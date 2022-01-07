
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_md5_sum (int *,int const*,unsigned int) ;

__attribute__((used)) static void run_lavu_md5(uint8_t *output,
                         const uint8_t *input, unsigned size)
{
    av_md5_sum(output, input, size);
}
