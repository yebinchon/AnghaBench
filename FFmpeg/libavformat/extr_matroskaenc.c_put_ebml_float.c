
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int AVIOContext ;


 int av_double2int (double) ;
 int avio_wb64 (int *,int ) ;
 int put_ebml_id (int *,int ) ;
 int put_ebml_num (int *,int,int ) ;

__attribute__((used)) static void put_ebml_float(AVIOContext *pb, uint32_t elementid, double val)
{
    put_ebml_id(pb, elementid);
    put_ebml_num(pb, 8, 0);
    avio_wb64(pb, av_double2int(val));
}
