#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ input; scalar_t__ metadata_filter_ids; struct TYPE_5__* protected_; struct TYPE_5__* private_; int /*<<< orphan*/ * partitioned_rice_contents; } ;
typedef  TYPE_1__ FLAC__StreamDecoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FLAC__MAX_CHANNELS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5(FLAC__StreamDecoder *decoder)
{
	unsigned i;

	if (decoder == NULL)
		return ;

	FUNC0(0 != decoder->protected_);
	FUNC0(0 != decoder->private_);
	FUNC0(0 != decoder->private_->input);

	(void)FUNC3(decoder);

	if(0 != decoder->private_->metadata_filter_ids)
		FUNC4(decoder->private_->metadata_filter_ids);

	FUNC1(decoder->private_->input);

	for(i = 0; i < FLAC__MAX_CHANNELS; i++)
		FUNC2(&decoder->private_->partitioned_rice_contents[i]);

	FUNC4(decoder->private_);
	FUNC4(decoder->protected_);
	FUNC4(decoder);
}