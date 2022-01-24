#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {unsigned int* parameters; unsigned int* raw_bits; } ;
struct TYPE_14__ {TYPE_4__* private_; TYPE_3__* protected_; } ;
struct TYPE_10__ {unsigned int blocksize; } ;
struct TYPE_11__ {TYPE_1__ header; } ;
struct TYPE_13__ {int /*<<< orphan*/  input; TYPE_2__ frame; } ;
struct TYPE_12__ {int /*<<< orphan*/  state; } ;
typedef  unsigned int const FLAC__uint32 ;
typedef  int FLAC__int32 ;
typedef  int FLAC__bool ;
typedef  TYPE_5__ FLAC__StreamDecoder ;
typedef  TYPE_6__ FLAC__EntropyCodingMethod_PartitionedRiceContents ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_ESCAPE_PARAMETER ; 
 unsigned int FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_PARAMETER_LEN ; 
 unsigned int FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ESCAPE_PARAMETER ; 
 unsigned int FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_PARAMETER_LEN ; 
 unsigned int const FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_RAW_LEN ; 
 int /*<<< orphan*/  FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int const*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,unsigned int,unsigned int const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,unsigned int) ; 

FLAC__bool FUNC6(FLAC__StreamDecoder *decoder, unsigned predictor_order, unsigned partition_order, FLAC__EntropyCodingMethod_PartitionedRiceContents *partitioned_rice_contents, FLAC__int32 *residual, FLAC__bool is_extended)
{
	FLAC__uint32 rice_parameter;
	int i;
	unsigned partition, sample, u;
	const unsigned partitions = 1u << partition_order;
	const unsigned partition_samples = partition_order > 0? decoder->private_->frame.header.blocksize >> partition_order : decoder->private_->frame.header.blocksize - predictor_order;
	const unsigned plen = is_extended? FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_PARAMETER_LEN : FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_PARAMETER_LEN;
	const unsigned pesc = is_extended? FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_ESCAPE_PARAMETER : FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ESCAPE_PARAMETER;

	/* invalid predictor and partition orders mush be handled in the callers */
	FUNC0(partition_order > 0? partition_samples >= predictor_order : decoder->private_->frame.header.blocksize >= predictor_order);

	if(!FUNC4(partitioned_rice_contents, FUNC5(6u, partition_order))) {
		decoder->protected_->state = FLAC__STREAM_DECODER_MEMORY_ALLOCATION_ERROR;
		return false;
	}

	sample = 0;
	for(partition = 0; partition < partitions; partition++) {
		if(!FUNC2(decoder->private_->input, &rice_parameter, plen))
			return false; /* read_callback_ sets the state for us */
		partitioned_rice_contents->parameters[partition] = rice_parameter;
		if(rice_parameter < pesc) {
			partitioned_rice_contents->raw_bits[partition] = 0;
			u = (partition_order == 0 || partition > 0)? partition_samples : partition_samples - predictor_order;
			if(!FUNC3(decoder->private_->input, residual + sample, u, rice_parameter))
				return false; /* read_callback_ sets the state for us */
			sample += u;
		}
		else {
			if(!FUNC2(decoder->private_->input, &rice_parameter, FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_RAW_LEN))
				return false; /* read_callback_ sets the state for us */
			partitioned_rice_contents->raw_bits[partition] = rice_parameter;
			for(u = (partition_order == 0 || partition > 0)? 0 : predictor_order; u < partition_samples; u++, sample++) {
				if(!FUNC1(decoder->private_->input, &i, rice_parameter))
					return false; /* read_callback_ sets the state for us */
				residual[sample] = i;
			}
		}
	}

	return true;
}