
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_common_ptr ;
typedef int backing_store_ptr ;


 int ERREXITS (int ,int ,char*) ;
 int JERR_TFILE_CREATE ;
 scalar_t__ open_ems_store (int ,int ,long) ;
 scalar_t__ open_file_store (int ,int ,long) ;
 scalar_t__ open_xms_store (int ,int ,long) ;

void
jpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info,
    long total_bytes_needed)
{
  if (open_file_store(cinfo, info, total_bytes_needed))
    return;
  ERREXITS(cinfo, JERR_TFILE_CREATE, "");
}
