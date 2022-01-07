
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int num_points; TYPE_1__* points; } ;
struct TYPE_4__ {scalar_t__ sample_number; } ;
typedef scalar_t__ FLAC__uint64 ;
typedef int FLAC__bool ;
typedef TYPE_2__ FLAC__StreamMetadata_SeekTable ;


 int FLAC__ASSERT (int) ;
 scalar_t__ FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER ;

FLAC__bool FLAC__format_seektable_is_legal(const FLAC__StreamMetadata_SeekTable *seek_table)
{
 unsigned i;
 FLAC__uint64 prev_sample_number = 0;
 FLAC__bool got_prev = 0;

 FLAC__ASSERT(0 != seek_table);

 for(i = 0; i < seek_table->num_points; i++) {
  if(got_prev) {
   if(
    seek_table->points[i].sample_number != FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER &&
    seek_table->points[i].sample_number <= prev_sample_number
   )
    return 0;
  }
  prev_sample_number = seek_table->points[i].sample_number;
  got_prev = 1;
 }

 return 1;
}
