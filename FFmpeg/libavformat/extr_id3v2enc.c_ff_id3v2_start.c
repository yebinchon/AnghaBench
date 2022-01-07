
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; int size_pos; } ;
typedef TYPE_1__ ID3v2EncContext ;
typedef int AVIOContext ;


 int MKBETAG (char const,char const,char const,int) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int ) ;
 int avio_wb32 (int *,int ) ;

void ff_id3v2_start(ID3v2EncContext *id3, AVIOContext *pb, int id3v2_version,
                    const char *magic)
{
    id3->version = id3v2_version;

    avio_wb32(pb, MKBETAG(magic[0], magic[1], magic[2], id3v2_version));
    avio_w8(pb, 0);
    avio_w8(pb, 0);


    id3->size_pos = avio_tell(pb);
    avio_wb32(pb, 0);
}
