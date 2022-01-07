
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int AVIOContext ;


 int avio_write (int *,void const*,int) ;
 int put_ebml_id (int *,int ) ;
 int put_ebml_num (int *,int,int ) ;

__attribute__((used)) static void put_ebml_binary(AVIOContext *pb, uint32_t elementid,
                            const void *buf, int size)
{
    put_ebml_id(pb, elementid);
    put_ebml_num(pb, size, 0);
    avio_write(pb, buf, size);
}
