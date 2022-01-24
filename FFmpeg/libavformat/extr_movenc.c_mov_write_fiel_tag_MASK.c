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
typedef  int /*<<< orphan*/  MOVTrack ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 unsigned int* fiel_data ; 

__attribute__((used)) static int FUNC4(AVIOContext *pb, MOVTrack *track, int field_order)
{
    unsigned mov_field_order = 0;
    if (field_order < FUNC0(fiel_data))
        mov_field_order = fiel_data[field_order];
    else
        return 0;
    FUNC2(pb, 10);
    FUNC3(pb, "fiel");
    FUNC1(pb, mov_field_order);
    return 10;
}