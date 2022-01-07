
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int av_clip_uint8 (int) ;

__attribute__((used)) static inline void yuv2rgb(uint8_t *out, int ridx, int Y, int U, int V)
{
    out[ridx] = av_clip_uint8(Y + (91881 * V + 32768 >> 16));
    out[1] = av_clip_uint8(Y + (-22554 * U - 46802 * V + 32768 >> 16));
    out[2 - ridx] = av_clip_uint8(Y + (116130 * U + 32768 >> 16));
}
