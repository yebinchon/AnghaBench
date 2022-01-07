
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



void hex32_to_rgba_normalized(uint32_t hex, float* rgba, float alpha)
{
   rgba[0] = rgba[4] = rgba[8] = rgba[12] = ((hex >> 16) & 0xFF) * (1.0f / 255.0f);
   rgba[1] = rgba[5] = rgba[9] = rgba[13] = ((hex >> 8 ) & 0xFF) * (1.0f / 255.0f);
   rgba[2] = rgba[6] = rgba[10] = rgba[14] = ((hex >> 0 ) & 0xFF) * (1.0f / 255.0f);
   rgba[3] = rgba[7] = rgba[11] = rgba[15] = alpha;
}
