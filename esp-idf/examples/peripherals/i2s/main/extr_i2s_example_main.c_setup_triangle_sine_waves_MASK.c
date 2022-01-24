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
 int /*<<< orphan*/  I2S_NUM ; 
 unsigned int PI ; 
 int SAMPLE_PER_CYCLE ; 
 int /*<<< orphan*/  SAMPLE_RATE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int,size_t*,int) ; 
 int* FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 
 double FUNC7 (unsigned int) ; 

__attribute__((used)) static void FUNC8(int bits)
{
    int *samples_data = FUNC4(((bits+8)/16)*SAMPLE_PER_CYCLE*4);
    unsigned int i, sample_val;
    double sin_float, triangle_float, triangle_step = (double) FUNC5(2, bits) / SAMPLE_PER_CYCLE;
    size_t i2s_bytes_write = 0;

    FUNC6("\r\nTest bits=%d free mem=%d, written data=%d\n", bits, FUNC0(), ((bits+8)/16)*SAMPLE_PER_CYCLE*4);

    triangle_float = -(FUNC5(2, bits)/2 - 1);

    for(i = 0; i < SAMPLE_PER_CYCLE; i++) {
        sin_float = FUNC7(i * PI / 180.0);
        if(sin_float >= 0)
            triangle_float += triangle_step;
        else
            triangle_float -= triangle_step;

        sin_float *= (FUNC5(2, bits)/2 - 1);

        if (bits == 16) {
            sample_val = 0;
            sample_val += (short)triangle_float;
            sample_val = sample_val << 16;
            sample_val += (short) sin_float;
            samples_data[i] = sample_val;
        } else if (bits == 24) { //1-bytes unused
            samples_data[i*2] = ((int) triangle_float) << 8;
            samples_data[i*2 + 1] = ((int) sin_float) << 8;
        } else {
            samples_data[i*2] = ((int) triangle_float);
            samples_data[i*2 + 1] = ((int) sin_float);
        }

    }

    FUNC2(I2S_NUM, SAMPLE_RATE, bits, 2);
    //Using push
    // for(i = 0; i < SAMPLE_PER_CYCLE; i++) {
    //     if (bits == 16)
    //         i2s_push_sample(0, &samples_data[i], 100);
    //     else
    //         i2s_push_sample(0, &samples_data[i*2], 100);
    // }
    // or write
    FUNC3(I2S_NUM, samples_data, ((bits+8)/16)*SAMPLE_PER_CYCLE*4, &i2s_bytes_write, 100);

    FUNC1(samples_data);
}