
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ segmentpos; int elementid; } ;
typedef TYPE_1__ mkv_seekhead_entry ;
struct TYPE_7__ {scalar_t__ max_entries; scalar_t__ num_entries; scalar_t__ segment_offset; TYPE_1__* entries; } ;
typedef TYPE_2__ mkv_seekhead ;


 int AVERROR (int ) ;
 int ENOMEM ;
 TYPE_1__* av_realloc_array (TYPE_1__*,scalar_t__,int) ;

__attribute__((used)) static int mkv_add_seekhead_entry(mkv_seekhead *seekhead, uint32_t elementid, uint64_t filepos)
{
    mkv_seekhead_entry *entries = seekhead->entries;


    if (seekhead->max_entries > 0 && seekhead->max_entries <= seekhead->num_entries)
        return -1;

    entries = av_realloc_array(entries, seekhead->num_entries + 1, sizeof(mkv_seekhead_entry));
    if (!entries)
        return AVERROR(ENOMEM);
    seekhead->entries = entries;

    seekhead->entries[seekhead->num_entries].elementid = elementid;
    seekhead->entries[seekhead->num_entries++].segmentpos = filepos - seekhead->segment_offset;

    return 0;
}
