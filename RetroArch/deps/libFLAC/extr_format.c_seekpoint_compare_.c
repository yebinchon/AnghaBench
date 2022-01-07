
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sample_number; } ;
typedef TYPE_1__ FLAC__StreamMetadata_SeekPoint ;



__attribute__((used)) static int seekpoint_compare_(const FLAC__StreamMetadata_SeekPoint *l, const FLAC__StreamMetadata_SeekPoint *r)
{

 if(l->sample_number == r->sample_number)
  return 0;
 else if(l->sample_number < r->sample_number)
  return -1;
 else
  return 1;
}
