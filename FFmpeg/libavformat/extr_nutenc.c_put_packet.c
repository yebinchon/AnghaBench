
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int NUTContext ;
typedef int AVIOContext ;


 int av_free (int *) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_wb64 (int *,int ) ;
 int avio_wl32 (int *,int ) ;
 int avio_write (int *,int *,int) ;
 int ff_crc04C11DB7_update ;
 int ff_put_v (int *,int) ;
 int ffio_get_checksum (int *) ;
 int ffio_init_checksum (int *,int ,int ) ;

__attribute__((used)) static void put_packet(NUTContext *nut, AVIOContext *bc, AVIOContext *dyn_bc,
                       int calculate_checksum, uint64_t startcode)
{
    uint8_t *dyn_buf = ((void*)0);
    int dyn_size = avio_close_dyn_buf(dyn_bc, &dyn_buf);
    int forw_ptr = dyn_size + 4 * calculate_checksum;

    if (forw_ptr > 4096)
        ffio_init_checksum(bc, ff_crc04C11DB7_update, 0);
    avio_wb64(bc, startcode);
    ff_put_v(bc, forw_ptr);
    if (forw_ptr > 4096)
        avio_wl32(bc, ffio_get_checksum(bc));

    if (calculate_checksum)
        ffio_init_checksum(bc, ff_crc04C11DB7_update, 0);
    avio_write(bc, dyn_buf, dyn_size);
    if (calculate_checksum)
        avio_wl32(bc, ffio_get_checksum(bc));

    av_free(dyn_buf);
}
