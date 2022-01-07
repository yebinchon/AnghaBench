
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int MatroskaMuxContext ;
typedef int AVIOContext ;


 int avio_get_dyn_buf (int *,int **) ;
 int avio_tell (int *) ;
 int avio_write (int *,int *,int) ;
 int put_ebml_num (int *,int,int ) ;

__attribute__((used)) static void end_ebml_master_crc32_preliminary(AVIOContext *pb, AVIOContext **dyn_cp, MatroskaMuxContext *mkv,
                                              int64_t *pos)
{
    uint8_t *buf;
    int size = avio_get_dyn_buf(*dyn_cp, &buf);

    *pos = avio_tell(pb);

    put_ebml_num(pb, size, 0);
    avio_write(pb, buf, size);
}
