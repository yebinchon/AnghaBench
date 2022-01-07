
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float expf (float) ;

__attribute__((used)) static float gaussian_for(int x, float sigma) {
    return 1.0f / expf(((float)x * (float)x) / (2.0f * sigma * sigma));
}
