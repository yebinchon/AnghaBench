
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;
typedef int AVIOContext ;


 int EBML_ID_VOID ;
 int av_assert0 (int) ;
 int avio_tell (int *) ;
 int ffio_fill (int *,int ,int) ;
 int put_ebml_id (int *,int ) ;
 int put_ebml_num (int *,int,int) ;

__attribute__((used)) static void put_ebml_void(AVIOContext *pb, uint64_t size)
{
    int64_t currentpos = avio_tell(pb);

    av_assert0(size >= 2);

    put_ebml_id(pb, EBML_ID_VOID);



    if (size < 10)
        put_ebml_num(pb, size - 2, 0);
    else
        put_ebml_num(pb, size - 9, 8);
    ffio_fill(pb, 0, currentpos + size - avio_tell(pb));
}
