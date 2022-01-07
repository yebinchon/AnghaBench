
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int next_byte (int *,int*) ;

__attribute__((used)) static void skip_spaces(AVIOContext *pb, int *cur_byte)
{
    while (*cur_byte == ' ' || *cur_byte == '\t' ||
           *cur_byte == '\n' || *cur_byte == '\r')
        next_byte(pb, cur_byte);
}
