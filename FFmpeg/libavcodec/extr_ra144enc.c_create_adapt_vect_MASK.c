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
typedef  float int16_t ;

/* Variables and functions */
 int BLOCKSIZE ; 
 int BUFFERSIZE ; 
 int FUNC0 (int,int) ; 

__attribute__((used)) static void FUNC1(float *vect, const int16_t *cb, int lag)
{
    int i;

    cb += BUFFERSIZE - lag;
    for (i = 0; i < FUNC0(BLOCKSIZE, lag); i++)
        vect[i] = cb[i];
    if (lag < BLOCKSIZE)
        for (i = 0; i < BLOCKSIZE - lag; i++)
            vect[lag + i] = cb[i];
}