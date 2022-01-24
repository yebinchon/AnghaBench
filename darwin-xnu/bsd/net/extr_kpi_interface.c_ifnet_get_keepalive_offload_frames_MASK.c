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
typedef  scalar_t__ u_int32_t ;
struct ifnet_keepalive_offload_frame {int dummy; } ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 size_t IFNET_KEEPALIVE_OFFLOAD_FRAME_DATA_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet_keepalive_offload_frame*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct ifnet_keepalive_offload_frame*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ifnet_keepalive_offload_frame*,scalar_t__,size_t,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct ifnet_keepalive_offload_frame*,scalar_t__,size_t,scalar_t__*) ; 

errno_t
FUNC7(ifnet_t ifp,
    struct ifnet_keepalive_offload_frame *frames_array,
    u_int32_t frames_array_count, size_t frame_data_offset,
    u_int32_t *used_frames_count)
{
	u_int32_t i;

	if (frames_array == NULL || used_frames_count == NULL ||
	    frame_data_offset >= IFNET_KEEPALIVE_OFFLOAD_FRAME_DATA_SIZE)
		return (EINVAL);

	/* frame_data_offset should be 32-bit aligned */
	if (FUNC1(frame_data_offset, sizeof(u_int32_t)) !=
	    frame_data_offset)
		return (EINVAL);

	*used_frames_count = 0;
	if (frames_array_count == 0)
		return (0);

	/* Keep-alive offload not required for CLAT interface */
	if (FUNC0(ifp))
		return (0);

	for (i = 0; i < frames_array_count; i++) {
		struct ifnet_keepalive_offload_frame *frame = frames_array + i;

		FUNC3(frame, sizeof(struct ifnet_keepalive_offload_frame));
	}

	/* First collect IPSec related keep-alive frames */
	*used_frames_count = FUNC4(ifp,
	    frames_array, frames_array_count, frame_data_offset);

	/* If there is more room, collect other UDP keep-alive frames */
	if (*used_frames_count < frames_array_count)
		FUNC6(ifp, frames_array,
		    frames_array_count, frame_data_offset,
		    used_frames_count);

	/* If there is more room, collect other TCP keep-alive frames */
	if (*used_frames_count < frames_array_count)
		FUNC5(ifp, frames_array,
		    frames_array_count, frame_data_offset,
		    used_frames_count);

	FUNC2(*used_frames_count <= frames_array_count);

	return (0);
}