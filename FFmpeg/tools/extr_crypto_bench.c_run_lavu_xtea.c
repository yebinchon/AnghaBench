
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVXTEA {int dummy; } ;


 struct AVXTEA* av_xtea_alloc () ;
 int av_xtea_crypt (struct AVXTEA*,int *,int const*,unsigned int,int *,int ) ;
 int av_xtea_init (struct AVXTEA*,int ) ;
 int fatal_error (char*) ;
 int hardcoded_key ;

__attribute__((used)) static void run_lavu_xtea(uint8_t *output,
                              const uint8_t *input, unsigned size)
{
    static struct AVXTEA *xtea;
    if (!xtea && !(xtea = av_xtea_alloc()))
        fatal_error("out of memory");
    av_xtea_init(xtea, hardcoded_key);
    av_xtea_crypt(xtea, output, input, size >> 3, ((void*)0), 0);
}
