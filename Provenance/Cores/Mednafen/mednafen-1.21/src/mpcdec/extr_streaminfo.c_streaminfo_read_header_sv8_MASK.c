#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int mpc_uint32_t ;
struct TYPE_8__ {int stream_version; double samples; double beg_silence; int is_true_gapless; double sample_freq; int max_band; int channels; int ms; int block_pwr; double average_bitrate; double tag_offset; double header_position; scalar_t__ bitrate; } ;
typedef  TYPE_1__ mpc_streaminfo ;
typedef  int /*<<< orphan*/  mpc_status ;
typedef  scalar_t__ mpc_size_t ;
struct TYPE_9__ {int count; scalar_t__ buff; } ;
typedef  TYPE_2__ mpc_bits_reader ;

/* Variables and functions */
 int /*<<< orphan*/  MPC_STATUS_FAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,double*) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (scalar_t__,int) ; 
 double* samplefreqs ; 

mpc_status
FUNC4(mpc_streaminfo* si, const mpc_bits_reader * r_in,
						   mpc_size_t block_size)
{
	mpc_uint32_t CRC;
	mpc_bits_reader r = *r_in;

	CRC = (FUNC2(&r, 16) << 16) | FUNC2(&r, 16);
	if (CRC != FUNC3(r.buff + 1 - (r.count >> 3), (int)block_size - 4))
		return MPC_STATUS_FAIL;

	si->stream_version = FUNC2(&r, 8);
	if (si->stream_version != 8)
		return MPC_STATUS_FAIL;

	FUNC1(&r, &si->samples);
	FUNC1(&r, &si->beg_silence);

	si->is_true_gapless = 1;
	si->sample_freq = samplefreqs[FUNC2(&r, 3)];
	si->max_band = FUNC2(&r, 5) + 1;
	si->channels = FUNC2(&r, 4) + 1;
	si->ms = FUNC2(&r, 1);
	si->block_pwr = FUNC2(&r, 3) * 2;

	si->bitrate = 0;

	if ((si->samples - si->beg_silence) != 0)
		si->average_bitrate = (si->tag_offset - si->header_position) * 8.0
				*  si->sample_freq / (si->samples - si->beg_silence);

	return FUNC0(si);
}