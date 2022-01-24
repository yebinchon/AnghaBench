#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mpc_uint64_t ;
typedef  int mpc_uint32_t ;
typedef  scalar_t__ mpc_status ;
struct TYPE_23__ {int pns; char* profile_name; scalar_t__ header_position; char stream_version; int /*<<< orphan*/  total_file_length; int /*<<< orphan*/  tag_offset; } ;
struct TYPE_24__ {int buff; } ;
struct TYPE_20__ {TYPE_4__ si; TYPE_5__ bits_reader; TYPE_3__* r; } ;
typedef  TYPE_1__ mpc_demux ;
struct TYPE_21__ {char* key; scalar_t__ size; } ;
typedef  TYPE_2__ mpc_block ;
struct TYPE_22__ {int /*<<< orphan*/  (* get_size ) (TYPE_3__*) ;} ;

/* Variables and functions */
 scalar_t__ DEMUX_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MPC_BUFFER_SWAP ; 
 scalar_t__ MPC_STATUS_FAIL ; 
 scalar_t__ MPC_STATUS_OK ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int FUNC2 (TYPE_5__*,TYPE_2__*) ; 
 char FUNC3 (TYPE_5__*,int) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 

__attribute__((used)) static mpc_status FUNC14(mpc_demux * d)
{
	char magic[4];

	d->si.pns = 0xFF;
	d->si.profile_name = "n.a.";

    // get header position
	d->si.header_position = FUNC8(d);
	if(d->si.header_position < 0)
		return MPC_STATUS_FAIL;

	d->si.tag_offset = d->si.total_file_length = d->r->get_size(d->r);

	FUNC7(d, 4, 0);
	magic[0] = FUNC3(&d->bits_reader, 8);
	magic[1] = FUNC3(&d->bits_reader, 8);
	magic[2] = FUNC3(&d->bits_reader, 8);
	magic[3] = FUNC3(&d->bits_reader, 8);

	if (FUNC1(magic, "MP+", 3) == 0) {
		d->si.stream_version = magic[3] & 15;
		d->si.pns = magic[3] >> 4;
		if (d->si.stream_version != 7)
			return MPC_STATUS_FAIL;
		if (FUNC7(d, 6 * 4, MPC_BUFFER_SWAP) < 6 * 4) // header block size + endian convertion
			return MPC_STATUS_FAIL;
		FUNC0( FUNC11(&d->si, &d->bits_reader) );
	} else if (FUNC1(magic, "MPCK", 4) == 0) {
		mpc_block b;
		int size;
		FUNC7(d, 11, 0); // max header block size
		size = FUNC2(&d->bits_reader, &b);
		while( FUNC1(b.key, "AP", 2) != 0 ){ // scan all blocks until audio
			if (FUNC4(b.key) != MPC_STATUS_OK)
				return MPC_STATUS_FAIL;
			if (b.size > (mpc_uint64_t) DEMUX_BUFFER_SIZE - 11)
				return MPC_STATUS_FAIL;
			
			if (FUNC7(d, 11 + (mpc_uint32_t) b.size, 0) <= b.size) 
				return MPC_STATUS_FAIL;

			if (FUNC1(b.key, "SH", 2) == 0) {
				FUNC0( FUNC12(&d->si, &d->bits_reader, (mpc_uint32_t) b.size) );
			} else if (FUNC1(b.key, "RG", 2) == 0) {
				FUNC10(&d->si, &d->bits_reader);
			} else if (FUNC1(b.key, "EI", 2) == 0) {
				FUNC9(&d->si, &d->bits_reader);
			} else if (FUNC1(b.key, "SO", 2) == 0) {
				FUNC0( FUNC5(d, size, (mpc_uint32_t) b.size) );
			} else if (FUNC1(b.key, "ST", 2) == 0) {
				FUNC0( FUNC6(d) );
			}
			d->bits_reader.buff += b.size;
			size = FUNC2(&d->bits_reader, &b);
		}
		d->bits_reader.buff -= size;
		if (d->si.stream_version == 0) // si not initialized !!!
			return MPC_STATUS_FAIL;
	} else {
		return MPC_STATUS_FAIL;
	}

	return MPC_STATUS_OK;
}