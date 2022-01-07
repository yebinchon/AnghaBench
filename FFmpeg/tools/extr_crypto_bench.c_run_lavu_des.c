
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVDES {int dummy; } ;


 struct AVDES* av_des_alloc () ;
 int av_des_crypt (struct AVDES*,int *,int const*,unsigned int,int *,int ) ;
 int av_des_init (struct AVDES*,int ,int,int ) ;
 int fatal_error (char*) ;
 int hardcoded_key ;

__attribute__((used)) static void run_lavu_des(uint8_t *output,
                              const uint8_t *input, unsigned size)
{
    static struct AVDES *des;
    if (!des && !(des = av_des_alloc()))
        fatal_error("out of memory");
    av_des_init(des, hardcoded_key, 64, 0);
    av_des_crypt(des, output, input, size >> 3, ((void*)0), 0);
}
