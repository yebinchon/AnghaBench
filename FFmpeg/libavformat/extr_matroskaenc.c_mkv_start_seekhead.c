
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int reserved_size; int max_entries; int filepos; int segment_offset; } ;
typedef TYPE_1__ mkv_seekhead ;
typedef int int64_t ;
typedef int AVIOContext ;


 int MAX_SEEKENTRY_SIZE ;
 TYPE_1__* av_mallocz (int) ;
 int avio_tell (int *) ;
 int put_ebml_void (int *,int) ;

__attribute__((used)) static mkv_seekhead *mkv_start_seekhead(AVIOContext *pb, int64_t segment_offset,
                                        int numelements)
{
    mkv_seekhead *new_seekhead = av_mallocz(sizeof(mkv_seekhead));
    if (!new_seekhead)
        return ((void*)0);

    new_seekhead->segment_offset = segment_offset;

    if (numelements > 0) {
        new_seekhead->filepos = avio_tell(pb);



        new_seekhead->reserved_size = numelements * MAX_SEEKENTRY_SIZE + 19;
        new_seekhead->max_entries = numelements;
        put_ebml_void(pb, new_seekhead->reserved_size);
    }
    return new_seekhead;
}
