
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float byte ;



unsigned ColorBytes4 (float r, float g, float b, float a) {
 unsigned i;

 ( (byte *)&i )[0] = r * 255;
 ( (byte *)&i )[1] = g * 255;
 ( (byte *)&i )[2] = b * 255;
 ( (byte *)&i )[3] = a * 255;

 return i;
}
