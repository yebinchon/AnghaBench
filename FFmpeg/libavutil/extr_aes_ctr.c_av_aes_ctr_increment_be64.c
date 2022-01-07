
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;



__attribute__((used)) static void av_aes_ctr_increment_be64(uint8_t* counter)
{
    uint8_t* cur_pos;

    for (cur_pos = counter + 7; cur_pos >= counter; cur_pos--) {
        (*cur_pos)++;
        if (*cur_pos != 0) {
            break;
        }
    }
}
