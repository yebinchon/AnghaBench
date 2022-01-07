
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int crc ;
struct TYPE_3__ {scalar_t__ write_crc; } ;
typedef TYPE_1__ MatroskaMuxContext ;
typedef int AVIOContext ;


 int AV_CRC_32_IEEE_LE ;
 int AV_WL32 (int *,int) ;
 int EBML_ID_CRC32 ;
 int UINT32_MAX ;
 int av_crc (int ,int,int *,int) ;
 int av_crc_get_table (int ) ;
 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_write (int *,int *,int) ;
 int put_ebml_binary (int *,int ,int *,int) ;
 int put_ebml_num (int *,int,int ) ;

__attribute__((used)) static void end_ebml_master_crc32(AVIOContext *pb, AVIOContext **dyn_cp, MatroskaMuxContext *mkv)
{
    uint8_t *buf, crc[4];
    int size, skip = 0;

    size = avio_close_dyn_buf(*dyn_cp, &buf);
    put_ebml_num(pb, size, 0);
    if (mkv->write_crc) {
        skip = 6;
        AV_WL32(crc, av_crc(av_crc_get_table(AV_CRC_32_IEEE_LE), UINT32_MAX, buf + skip, size - skip) ^ UINT32_MAX);
        put_ebml_binary(pb, EBML_ID_CRC32, crc, sizeof(crc));
    }
    avio_write(pb, buf + skip, size - skip);

    av_free(buf);
    *dyn_cp = ((void*)0);
}
