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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  int16_t ;
typedef  enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;

/* Variables and functions */
#define  AV_SAMPLE_FMT_DBL 132 
#define  AV_SAMPLE_FMT_FLT 131 
#define  AV_SAMPLE_FMT_S16 130 
#define  AV_SAMPLE_FMT_S32 129 
#define  AV_SAMPLE_FMT_U8 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (double) ; 

__attribute__((used)) static void  FUNC8(uint8_t *a[], int ch, int index, int ch_count, enum AVSampleFormat f, double v){
    uint8_t *p;
    if(FUNC5(f)){
        f= FUNC4(f, 0);
        p= a[ch];
    }else{
        p= a[0];
        index= ch + index*ch_count;
    }
    switch(f){
    case AV_SAMPLE_FMT_U8 : ((uint8_t*)p)[index]= FUNC2 (FUNC7((v+1.0)*127));     break;
    case AV_SAMPLE_FMT_S16: ((int16_t*)p)[index]= FUNC1 (FUNC7(v*32767));         break;
    case AV_SAMPLE_FMT_S32: ((int32_t*)p)[index]= FUNC3(FUNC6(v*2147483647));   break;
    case AV_SAMPLE_FMT_FLT: ((float  *)p)[index]= v;                                      break;
    case AV_SAMPLE_FMT_DBL: ((double *)p)[index]= v;                                      break;
    default: FUNC0(0);
    }
}