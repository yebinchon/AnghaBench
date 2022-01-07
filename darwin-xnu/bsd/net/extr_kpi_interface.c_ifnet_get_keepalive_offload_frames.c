
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ifnet_keepalive_offload_frame {int dummy; } ;
typedef int ifnet_t ;
typedef int errno_t ;


 int EINVAL ;
 size_t IFNET_KEEPALIVE_OFFLOAD_FRAME_DATA_SIZE ;
 scalar_t__ IS_INTF_CLAT46 (int ) ;
 size_t P2ROUNDUP (size_t,int) ;
 int VERIFY (int) ;
 int bzero (struct ifnet_keepalive_offload_frame*,int) ;
 scalar_t__ key_fill_offload_frames_for_savs (int ,struct ifnet_keepalive_offload_frame*,scalar_t__,size_t) ;
 int tcp_fill_keepalive_offload_frames (int ,struct ifnet_keepalive_offload_frame*,scalar_t__,size_t,scalar_t__*) ;
 int udp_fill_keepalive_offload_frames (int ,struct ifnet_keepalive_offload_frame*,scalar_t__,size_t,scalar_t__*) ;

errno_t
ifnet_get_keepalive_offload_frames(ifnet_t ifp,
    struct ifnet_keepalive_offload_frame *frames_array,
    u_int32_t frames_array_count, size_t frame_data_offset,
    u_int32_t *used_frames_count)
{
 u_int32_t i;

 if (frames_array == ((void*)0) || used_frames_count == ((void*)0) ||
     frame_data_offset >= IFNET_KEEPALIVE_OFFLOAD_FRAME_DATA_SIZE)
  return (EINVAL);


 if (P2ROUNDUP(frame_data_offset, sizeof(u_int32_t)) !=
     frame_data_offset)
  return (EINVAL);

 *used_frames_count = 0;
 if (frames_array_count == 0)
  return (0);


 if (IS_INTF_CLAT46(ifp))
  return (0);

 for (i = 0; i < frames_array_count; i++) {
  struct ifnet_keepalive_offload_frame *frame = frames_array + i;

  bzero(frame, sizeof(struct ifnet_keepalive_offload_frame));
 }


 *used_frames_count = key_fill_offload_frames_for_savs(ifp,
     frames_array, frames_array_count, frame_data_offset);


 if (*used_frames_count < frames_array_count)
  udp_fill_keepalive_offload_frames(ifp, frames_array,
      frames_array_count, frame_data_offset,
      used_frames_count);


 if (*used_frames_count < frames_array_count)
  tcp_fill_keepalive_offload_frames(ifp, frames_array,
      frames_array_count, frame_data_offset,
      used_frames_count);

 VERIFY(*used_frames_count <= frames_array_count);

 return (0);
}
