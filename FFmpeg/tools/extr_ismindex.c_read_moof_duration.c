
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;
typedef scalar_t__ int32_t ;
typedef int AVIOContext ;


 scalar_t__ MKBETAG (char,char,unsigned char,char) ;
 int MOV_TFHD_BASE_DATA_OFFSET ;
 int MOV_TFHD_DEFAULT_DURATION ;
 int MOV_TFHD_STSD_ID ;
 int SEEK_SET ;
 int avio_r8 (int *) ;
 int avio_rb24 (int *) ;
 scalar_t__ avio_rb32 (int *) ;
 int avio_rb64 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 scalar_t__ avio_tell (int *) ;
 scalar_t__ expect_tag (scalar_t__,scalar_t__) ;
 int fprintf (int ,char*) ;
 scalar_t__ read_trun_duration (int *,int,scalar_t__) ;
 int stderr ;

__attribute__((used)) static int64_t read_moof_duration(AVIOContext *in, int64_t offset)
{
    int64_t ret = -1;
    int32_t moof_size, size, tag;
    int64_t pos = 0;
    int default_duration = 0;

    avio_seek(in, offset, SEEK_SET);
    moof_size = avio_rb32(in);
    tag = avio_rb32(in);
    if (expect_tag(tag, MKBETAG('m', 'o', 'o', 'f')) != 0)
        goto fail;
    while (pos < offset + moof_size) {
        pos = avio_tell(in);
        size = avio_rb32(in);
        tag = avio_rb32(in);
        if (tag == MKBETAG('t', 'r', 'a', 'f')) {
            int64_t traf_pos = pos;
            int64_t traf_size = size;
            while (pos < traf_pos + traf_size) {
                pos = avio_tell(in);
                size = avio_rb32(in);
                tag = avio_rb32(in);
                if (tag == MKBETAG('t', 'f', 'h', 'd')) {
                    int flags = 0;
                    avio_r8(in);
                    flags = avio_rb24(in);
                    avio_rb32(in);
                    if (flags & MOV_TFHD_BASE_DATA_OFFSET)
                        avio_rb64(in);
                    if (flags & MOV_TFHD_STSD_ID)
                        avio_rb32(in);
                    if (flags & MOV_TFHD_DEFAULT_DURATION)
                        default_duration = avio_rb32(in);
                }
                if (tag == MKBETAG('t', 'r', 'u', 'n')) {
                    return read_trun_duration(in, default_duration,
                                              pos + size);
                }
                avio_seek(in, pos + size, SEEK_SET);
            }
            fprintf(stderr, "Couldn't find trun\n");
            goto fail;
        }
        avio_seek(in, pos + size, SEEK_SET);
    }
    fprintf(stderr, "Couldn't find traf\n");

fail:
    return ret;
}
