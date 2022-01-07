
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int AVRational ;


 int * frame_rate_tab ;

__attribute__((used)) static AVRational fps_tag2avr(int32_t fps) {
    if (fps < 1 || fps > 9) fps = 9;
    return frame_rate_tab[fps - 1];
}
