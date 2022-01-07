
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uintptr_t
scrub_frame(uint64_t *bt, int n_frames, int frame)
{
 if (frame < n_frames) {
  return (uintptr_t)(bt[frame]);
 } else {
  return 0;
 }
}
