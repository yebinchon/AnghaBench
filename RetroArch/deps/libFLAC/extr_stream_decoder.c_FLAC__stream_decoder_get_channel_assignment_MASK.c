#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* protected_; } ;
struct TYPE_4__ {int /*<<< orphan*/  channel_assignment; } ;
typedef  TYPE_2__ FLAC__StreamDecoder ;
typedef  int /*<<< orphan*/  FLAC__ChannelAssignment ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

FLAC__ChannelAssignment FUNC1(const FLAC__StreamDecoder *decoder)
{
	FUNC0(0 != decoder);
	FUNC0(0 != decoder->protected_);
	return decoder->protected_->channel_assignment;
}