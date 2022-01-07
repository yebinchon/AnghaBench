
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int asf_header_size; int asf_header_read_size; char* asf_header; } ;
typedef TYPE_1__ MMSContext ;


 int FFMIN (int const,int) ;
 int av_freep (char**) ;
 int memcpy (int *,char*,int) ;

int ff_mms_read_header(MMSContext *mms, uint8_t *buf, const int size)
{
    char *pos;
    int size_to_copy;
    int remaining_size = mms->asf_header_size - mms->asf_header_read_size;
    size_to_copy = FFMIN(size, remaining_size);
    pos = mms->asf_header + mms->asf_header_read_size;
    memcpy(buf, pos, size_to_copy);
    if (mms->asf_header_read_size == mms->asf_header_size) {
        av_freep(&mms->asf_header);
    }
    mms->asf_header_read_size += size_to_copy;
    return size_to_copy;
}
