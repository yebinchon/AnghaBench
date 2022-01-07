
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int AV_RB16 (int const*) ;
 unsigned int AV_RL16 (int const*) ;

__attribute__((used)) static unsigned int read16(const uint8_t **ptr, int is_big)
{
    unsigned int temp;
    if (is_big) {
        temp = AV_RB16(*ptr);
    } else {
        temp = AV_RL16(*ptr);
    }
    *ptr += 2;
    return temp;
}
