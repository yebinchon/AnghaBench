#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 float FUNC0 (float,float,float) ; 

float FUNC1(
    float x, float y, float z,
    int octaves, float persistence, float lacunarity)
{
    float freq = 1.0f;
    float amp = 1.0f;
    float max = 1.0f;
    float total = FUNC0(x, y, z);
    int i;
    for (i = 1; i < octaves; ++i) {
        freq *= lacunarity;
        amp *= persistence;
        max += amp;
        total += FUNC0(x * freq, y * freq, z * freq) * amp;
    }
    return (1 + total / max) / 2;
}