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
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(GetBitContext *gb, const int *dim)
{
    int t   = FUNC0(gb, 3);
    int val = dim[t];
    if(val < 0)
        val = dim[FUNC1(gb) - val];
    if(!val){
        do{
            if (FUNC2(gb) < 8)
                return AVERROR_INVALIDDATA;
            t = FUNC0(gb, 8);
            val += t << 2;
        }while(t == 0xFF);
    }
    return val;
}