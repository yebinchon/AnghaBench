
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int MpegTSSection ;


 int AVERROR_INVALIDDATA ;
 int SDT_TID ;
 int memcpy (int *,int *,int) ;
 int mpegts_write_section (int *,int *,unsigned int) ;
 int put16 (int **,int) ;

__attribute__((used)) static int mpegts_write_section1(MpegTSSection *s, int tid, int id,
                                 int version, int sec_num, int last_sec_num,
                                 uint8_t *buf, int len)
{
    uint8_t section[1024], *q;
    unsigned int tot_len;

    unsigned int flags = tid == SDT_TID ? 0xf000 : 0xb000;

    tot_len = 3 + 5 + len + 4;

    if (tot_len > 1024)
        return AVERROR_INVALIDDATA;

    q = section;
    *q++ = tid;
    put16(&q, flags | (len + 5 + 4));
    put16(&q, id);
    *q++ = 0xc1 | (version << 1);
    *q++ = sec_num;
    *q++ = last_sec_num;
    memcpy(q, buf, len);

    mpegts_write_section(s, section, tot_len);
    return 0;
}
