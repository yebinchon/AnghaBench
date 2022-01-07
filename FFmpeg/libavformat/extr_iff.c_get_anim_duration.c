
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int GetByteContext ;


 unsigned int ID_ANHD ;
 int bytestream2_get_be32 (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 unsigned int bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,int *,int) ;
 int bytestream2_skip (int *,unsigned int) ;

__attribute__((used)) static unsigned get_anim_duration(uint8_t *buf, int size)
{
    GetByteContext gb;

    bytestream2_init(&gb, buf, size);
    bytestream2_skip(&gb, 4);
    while (bytestream2_get_bytes_left(&gb) > 8) {
        unsigned chunk = bytestream2_get_le32(&gb);
        unsigned size = bytestream2_get_be32(&gb);

        if (chunk == ID_ANHD) {
            if (size < 40)
                break;
            bytestream2_skip(&gb, 14);
            return bytestream2_get_be32(&gb);
        } else {
            bytestream2_skip(&gb, size + size & 1);
        }
    }
    return 10;
}
