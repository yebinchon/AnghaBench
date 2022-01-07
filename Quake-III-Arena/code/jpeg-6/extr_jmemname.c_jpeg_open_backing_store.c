
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int j_common_ptr ;
typedef TYPE_1__* backing_store_ptr ;
struct TYPE_3__ {int temp_name; int close_backing_store; int write_backing_store; int read_backing_store; int * temp_file; } ;


 int ERREXITS (int ,int ,int ) ;
 int JERR_TFILE_CREATE ;
 int JTRC_TFILE_OPEN ;
 int RW_BINARY ;
 int TRACEMSS (int ,int,int ,int ) ;
 int close_backing_store ;
 int * fopen (int ,int ) ;
 int read_backing_store ;
 int select_file_name (int ) ;
 int write_backing_store ;

void
jpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info,
    long total_bytes_needed)
{
  select_file_name(info->temp_name);
  if ((info->temp_file = fopen(info->temp_name, RW_BINARY)) == ((void*)0))
    ERREXITS(cinfo, JERR_TFILE_CREATE, info->temp_name);
  info->read_backing_store = read_backing_store;
  info->write_backing_store = write_backing_store;
  info->close_backing_store = close_backing_store;
  TRACEMSS(cinfo, 1, JTRC_TFILE_OPEN, info->temp_name);
}
