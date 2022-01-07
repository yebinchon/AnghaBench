
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sample_number; scalar_t__ frame_samples; scalar_t__ stream_offset; } ;
struct TYPE_4__ {unsigned int num_points; TYPE_2__* points; } ;
typedef int FLAC__bool ;
typedef TYPE_1__ FLAC__StreamMetadata_SeekTable ;
typedef int FLAC__StreamMetadata_SeekPoint ;


 int FLAC__ASSERT (int) ;
 scalar_t__ FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER ;
 int qsort (TYPE_2__*,unsigned int,int,int (*) (void const*,void const*)) ;
 scalar_t__ seekpoint_compare_ ;

unsigned FLAC__format_seektable_sort(FLAC__StreamMetadata_SeekTable *seek_table)
{
 unsigned i, j;
 FLAC__bool first;

 FLAC__ASSERT(0 != seek_table);

 if (seek_table->num_points == 0)
  return 0;


 qsort(seek_table->points, seek_table->num_points, sizeof(FLAC__StreamMetadata_SeekPoint), (int (*)(const void *, const void *))seekpoint_compare_);


 first = 1;
 for(i = j = 0; i < seek_table->num_points; i++) {
  if(seek_table->points[i].sample_number != FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER) {
   if(!first) {
    if(seek_table->points[i].sample_number == seek_table->points[j-1].sample_number)
     continue;
   }
  }
  first = 0;
  seek_table->points[j++] = seek_table->points[i];
 }

 for(i = j; i < seek_table->num_points; i++) {
  seek_table->points[i].sample_number = FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER;
  seek_table->points[i].stream_offset = 0;
  seek_table->points[i].frame_samples = 0;
 }

 return j;
}
