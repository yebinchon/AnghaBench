
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int ERR_CODE (int) ;
 int next_byte (int *,int*) ;
 int skip_spaces (int *,int*) ;

__attribute__((used)) static int expect_byte(AVIOContext *pb, int *cur_byte, uint8_t c)
{
    skip_spaces(pb, cur_byte);
    if (*cur_byte != c)
        return ERR_CODE(*cur_byte);
    next_byte(pb, cur_byte);
    return 0;
}
