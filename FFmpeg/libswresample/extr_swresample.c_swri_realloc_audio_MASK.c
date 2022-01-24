#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int bps; int ch_count; int count; int /*<<< orphan*/  data; scalar_t__* ch; scalar_t__ planar; } ;
typedef  TYPE_1__ AudioData ;

/* Variables and functions */
 int /*<<< orphan*/  ALIGN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int) ; 

int FUNC6(AudioData *a, int count){
    int i, countb;
    AudioData old;

    if(count < 0 || count > INT_MAX/2/a->bps/a->ch_count)
        return FUNC0(EINVAL);

    if(a->count >= count)
        return 0;

    count*=2;

    countb= FUNC1(count*a->bps, ALIGN);
    old= *a;

    FUNC2(a->bps);
    FUNC2(a->ch_count);

    a->data= FUNC4(countb, a->ch_count);
    if(!a->data)
        return FUNC0(ENOMEM);
    for(i=0; i<a->ch_count; i++){
        a->ch[i]= a->data + i*(a->planar ? countb : a->bps);
        if(a->count && a->planar) FUNC5(a->ch[i], old.ch[i], a->count*a->bps);
    }
    if(a->count && !a->planar) FUNC5(a->ch[0], old.ch[0], a->count*a->ch_count*a->bps);
    FUNC3(&old.data);
    a->count= count;

    return 1;
}