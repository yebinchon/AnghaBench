
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;
typedef int AVBPrint ;


 int expect_byte (int *,int*,char) ;
 int parse_string (int *,int*,int *,int ) ;

__attribute__((used)) static int parse_label(AVIOContext *pb, int *cur_byte, AVBPrint *bp)
{
    int ret;

    ret = parse_string(pb, cur_byte, bp, 0);
    if (ret < 0)
        return ret;
    ret = expect_byte(pb, cur_byte, ':');
    if (ret < 0)
        return ret;
    return 0;
}
