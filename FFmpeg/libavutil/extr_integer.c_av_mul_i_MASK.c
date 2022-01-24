#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  out ;
struct TYPE_7__ {int* v; } ;
typedef  TYPE_1__ AVInteger ;

/* Variables and functions */
 int AV_INTEGER_SIZE ; 
 int FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

AVInteger FUNC2(AVInteger a, AVInteger b){
    AVInteger out;
    int i, j;
    int na= (FUNC0(a)+16) >> 4;
    int nb= (FUNC0(b)+16) >> 4;

    FUNC1(&out, 0, sizeof(out));

    for(i=0; i<na; i++){
        unsigned int carry=0;

        if(a.v[i])
            for(j=i; j<AV_INTEGER_SIZE && j-i<=nb; j++){
                carry= (carry>>16) + out.v[j] + a.v[i]*(unsigned)b.v[j-i];
                out.v[j]= carry;
            }
    }

    return out;
}