
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct AVCAMELLIA {int dummy; } ;


 struct AVCAMELLIA* av_camellia_alloc () ;
 int av_camellia_crypt (struct AVCAMELLIA*,int *,int const*,unsigned int,int *,int ) ;
 int av_camellia_init (struct AVCAMELLIA*,int ,int) ;
 int fatal_error (char*) ;
 int hardcoded_key ;

__attribute__((used)) static void run_lavu_camellia(uint8_t *output,
                              const uint8_t *input, unsigned size)
{
    static struct AVCAMELLIA *camellia;
    if (!camellia && !(camellia = av_camellia_alloc()))
        fatal_error("out of memory");
    av_camellia_init(camellia, hardcoded_key, 128);
    av_camellia_crypt(camellia, output, input, size >> 4, ((void*)0), 0);
}
