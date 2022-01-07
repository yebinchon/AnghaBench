
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVCAST5 ;


 int decipher (int *,int *,int const*,int *) ;
 int encipher (int *,int *,int const*) ;

void av_cast5_crypt(AVCAST5* cs, uint8_t* dst, const uint8_t* src, int count, int decrypt)
{
    while (count--) {
        if (decrypt){
            decipher(cs, dst, src, ((void*)0));
        } else {
            encipher(cs, dst, src);
        }
        src = src + 8;
        dst = dst + 8;
    }
}
