
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int member_0; int member_1; } ;
typedef TYPE_1__ const AVRational ;


 int av_log2 (int) ;

__attribute__((used)) static AVRational fps_umf2avr(uint32_t flags) {
    static const AVRational map[] = {{50, 1}, {60000, 1001}, {24, 1},
        {25, 1}, {30000, 1001}};
    int idx = av_log2((flags & 0x7c0) >> 6);
    return map[idx];
}
