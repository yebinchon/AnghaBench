
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVAES {int dummy; } ;


 struct AVAES* av_aes_alloc () ;
 int av_aes_crypt (struct AVAES*,int *,int const*,unsigned int,int *,int ) ;
 int av_aes_init (struct AVAES*,int ,int,int ) ;
 int fatal_error (char*) ;
 int hardcoded_key ;

__attribute__((used)) static void run_lavu_aes128(uint8_t *output,
                            const uint8_t *input, unsigned size)
{
    static struct AVAES *aes;
    if (!aes && !(aes = av_aes_alloc()))
        fatal_error("out of memory");
    av_aes_init(aes, hardcoded_key, 128, 0);
    av_aes_crypt(aes, output, input, size >> 4, ((void*)0), 0);
}
