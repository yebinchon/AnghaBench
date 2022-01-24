#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ parameters; scalar_t__ raw_bits; } ;
typedef  TYPE_1__ FLAC__EntropyCodingMethod_PartitionedRiceContents ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(FLAC__EntropyCodingMethod_PartitionedRiceContents *object)
{
	FUNC0(0 != object);

	if(0 != object->parameters)
		FUNC2(object->parameters);
	if(0 != object->raw_bits)
		FUNC2(object->raw_bits);
	FUNC1(object);
}