
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ write_crc; } ;
typedef TYPE_1__ MatroskaMuxContext ;
typedef int AVIOContext ;


 int avio_open_dyn_buf (int **) ;
 int put_ebml_id (int *,int ) ;
 int put_ebml_void (int *,int) ;

__attribute__((used)) static int start_ebml_master_crc32(AVIOContext *pb, AVIOContext **dyn_cp, MatroskaMuxContext *mkv,
                                   uint32_t elementid)
{
    int ret;

    if ((ret = avio_open_dyn_buf(dyn_cp)) < 0)
        return ret;

    put_ebml_id(pb, elementid);
    if (mkv->write_crc)
        put_ebml_void(*dyn_cp, 6);

    return 0;
}
