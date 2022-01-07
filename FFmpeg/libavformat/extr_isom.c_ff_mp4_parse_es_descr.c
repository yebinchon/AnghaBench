
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int avio_skip (int *,int) ;

void ff_mp4_parse_es_descr(AVIOContext *pb, int *es_id)
{
     int flags;
     if (es_id) *es_id = avio_rb16(pb);
     else avio_rb16(pb);
     flags = avio_r8(pb);
     if (flags & 0x80)
         avio_rb16(pb);
     if (flags & 0x40) {
         int len = avio_r8(pb);
         avio_skip(pb, len);
     }
     if (flags & 0x20)
         avio_rb16(pb);
}
