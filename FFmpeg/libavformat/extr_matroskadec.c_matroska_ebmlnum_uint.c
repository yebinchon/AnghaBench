
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int MatroskaDemuxContext ;
typedef int AVIOContext ;


 int FFMIN (int ,int) ;
 int ebml_read_num (int *,int *,int ,int *,int) ;
 int ffio_init_context (int *,int *,int ,int ,int *,int *,int *,int *) ;

__attribute__((used)) static int matroska_ebmlnum_uint(MatroskaDemuxContext *matroska,
                                 uint8_t *data, uint32_t size, uint64_t *num)
{
    AVIOContext pb;
    ffio_init_context(&pb, data, size, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
    return ebml_read_num(matroska, &pb, FFMIN(size, 8), num, 1);
}
