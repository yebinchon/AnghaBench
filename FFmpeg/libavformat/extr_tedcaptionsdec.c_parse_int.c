
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ BETWEEN (int,int ,char) ;
 int next_byte (int *,int*) ;
 int skip_spaces (int *,int*) ;

__attribute__((used)) static int parse_int(AVIOContext *pb, int *cur_byte, int64_t *result)
{
    int64_t val = 0;

    skip_spaces(pb, cur_byte);
    if ((unsigned)*cur_byte - '0' > 9)
        return AVERROR_INVALIDDATA;
    while (BETWEEN(*cur_byte, '0', '9')) {
        val = val * 10 + (*cur_byte - '0');
        next_byte(pb, cur_byte);
    }
    *result = val;
    return 0;
}
