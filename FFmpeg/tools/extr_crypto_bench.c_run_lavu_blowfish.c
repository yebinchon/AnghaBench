
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVBlowfish {int dummy; } ;


 struct AVBlowfish* av_blowfish_alloc () ;
 int av_blowfish_crypt (struct AVBlowfish*,int *,int const*,unsigned int,int *,int ) ;
 int av_blowfish_init (struct AVBlowfish*,int ,int) ;
 int fatal_error (char*) ;
 int hardcoded_key ;

__attribute__((used)) static void run_lavu_blowfish(uint8_t *output,
                              const uint8_t *input, unsigned size)
{
    static struct AVBlowfish *blowfish;
    if (!blowfish && !(blowfish = av_blowfish_alloc()))
        fatal_error("out of memory");
    av_blowfish_init(blowfish, hardcoded_key, 16);
    av_blowfish_crypt(blowfish, output, input, size >> 3, ((void*)0), 0);
}
