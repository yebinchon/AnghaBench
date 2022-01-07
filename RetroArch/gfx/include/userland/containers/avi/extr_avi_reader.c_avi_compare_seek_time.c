
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef int VC_CONTAINER_SEEK_FLAGS_T ;


 int VC_CONTAINER_SEEK_FLAG_FORWARD ;

__attribute__((used)) static int avi_compare_seek_time(int64_t chunk_time, int64_t seek_time,
   int chunk_is_keyframe, VC_CONTAINER_SEEK_FLAGS_T seek_flags)
{
   if (chunk_time == seek_time && chunk_is_keyframe && !(seek_flags & VC_CONTAINER_SEEK_FLAG_FORWARD))
      return 0;

   if (chunk_time > seek_time && chunk_is_keyframe && (seek_flags & VC_CONTAINER_SEEK_FLAG_FORWARD))
      return 0;

   if (chunk_time > seek_time && !(seek_flags & VC_CONTAINER_SEEK_FLAG_FORWARD))
      return 1;

   return -1;
}
