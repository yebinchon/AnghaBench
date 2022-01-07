
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MpegEncContext ;



__attribute__((used)) static int no_sub_motion_search(MpegEncContext * s,
          int *mx_ptr, int *my_ptr, int dmin,
                                  int src_index, int ref_index,
                                  int size, int h)
{
    (*mx_ptr)<<=1;
    (*my_ptr)<<=1;
    return dmin;
}
