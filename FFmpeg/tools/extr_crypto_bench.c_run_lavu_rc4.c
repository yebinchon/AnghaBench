
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVRC4 {int dummy; } ;


 struct AVRC4* av_rc4_alloc () ;
 int av_rc4_crypt (struct AVRC4*,int *,int const*,unsigned int,int *,int ) ;
 int av_rc4_init (struct AVRC4*,int ,int,int ) ;
 int fatal_error (char*) ;
 int hardcoded_key ;

__attribute__((used)) static void run_lavu_rc4(uint8_t *output,
                              const uint8_t *input, unsigned size)
{
    static struct AVRC4 *rc4;
    if (!rc4 && !(rc4 = av_rc4_alloc()))
        fatal_error("out of memory");
    av_rc4_init(rc4, hardcoded_key, 128, 0);
    av_rc4_crypt(rc4, output, input, size, ((void*)0), 0);
}
