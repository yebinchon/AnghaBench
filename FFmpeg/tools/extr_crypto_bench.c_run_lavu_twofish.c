
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVTWOFISH {int dummy; } ;


 struct AVTWOFISH* av_twofish_alloc () ;
 int av_twofish_crypt (struct AVTWOFISH*,int *,int const*,unsigned int,int *,int ) ;
 int av_twofish_init (struct AVTWOFISH*,int ,int) ;
 int fatal_error (char*) ;
 int hardcoded_key ;

__attribute__((used)) static void run_lavu_twofish(uint8_t *output,
                              const uint8_t *input, unsigned size)
{
    static struct AVTWOFISH *twofish;
    if (!twofish && !(twofish = av_twofish_alloc()))
        fatal_error("out of memory");
    av_twofish_init(twofish, hardcoded_key, 128);
    av_twofish_crypt(twofish, output, input, size >> 4, ((void*)0), 0);
}
