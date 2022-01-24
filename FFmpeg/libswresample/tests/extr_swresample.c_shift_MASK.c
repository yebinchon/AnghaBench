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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(uint8_t *a[], int index, int ch_count, enum AVSampleFormat f){
    int ch;

    if(FUNC2(f)){
        f= FUNC0(f, 0);
        for(ch= 0; ch<ch_count; ch++)
            a[ch] += index*FUNC1(f);
    }else{
        a[0] += index*ch_count*FUNC1(f);
    }
}