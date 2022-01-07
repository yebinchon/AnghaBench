
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int j_common_ptr ;
typedef int backing_store_ptr ;


 int ERREXIT (int ,int ) ;
 int JERR_NO_BACKING_STORE ;

void
jpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info,
    long total_bytes_needed)
{
  ERREXIT(cinfo, JERR_NO_BACKING_STORE);
}
