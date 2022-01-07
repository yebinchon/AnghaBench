
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int CMSampleBufferRef ;
typedef int CMBlockBufferRef ;


 int AVERROR_INVALIDDATA ;
 int CMBlockBufferCopyDataBytes (int ,size_t,size_t,size_t*) ;
 int CMSampleBufferGetDataBuffer (int ) ;
 size_t CMSampleBufferGetTotalSampleSize (int ) ;

__attribute__((used)) static int count_nalus(size_t length_code_size,
                       CMSampleBufferRef sample_buffer,
                       int *count)
{
    size_t offset = 0;
    int status;
    int nalu_ct = 0;
    uint8_t size_buf[4];
    size_t src_size = CMSampleBufferGetTotalSampleSize(sample_buffer);
    CMBlockBufferRef block = CMSampleBufferGetDataBuffer(sample_buffer);

    if (length_code_size > 4)
        return AVERROR_INVALIDDATA;

    while (offset < src_size) {
        size_t curr_src_len;
        size_t box_len = 0;
        size_t i;

        status = CMBlockBufferCopyDataBytes(block,
                                            offset,
                                            length_code_size,
                                            size_buf);

        for (i = 0; i < length_code_size; i++) {
            box_len <<= 8;
            box_len |= size_buf[i];
        }

        curr_src_len = box_len + length_code_size;
        offset += curr_src_len;

        nalu_ct++;
    }

    *count = nalu_ct;
    return 0;
}
