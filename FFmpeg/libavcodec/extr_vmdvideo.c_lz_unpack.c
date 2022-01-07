
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 unsigned int QUEUE_MASK ;
 int QUEUE_SIZE ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 void* bytestream2_get_byteu (int *) ;
 unsigned int bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,unsigned char const*,int) ;
 int bytestream2_peek_byte (int *) ;
 int bytestream2_peek_le32 (int *) ;
 int bytestream2_skipu (int *,int) ;
 int memset (unsigned char*,int,int) ;

__attribute__((used)) static int lz_unpack(const unsigned char *src, int src_len,
                      unsigned char *dest, int dest_len)
{
    unsigned char *d;
    unsigned char *d_end;
    unsigned char queue[QUEUE_SIZE];
    unsigned int qpos;
    unsigned int dataleft;
    unsigned int chainofs;
    unsigned int chainlen;
    unsigned int speclen;
    unsigned char tag;
    unsigned int i, j;
    GetByteContext gb;

    bytestream2_init(&gb, src, src_len);
    d = dest;
    d_end = d + dest_len;
    dataleft = bytestream2_get_le32(&gb);
    memset(queue, 0x20, QUEUE_SIZE);
    if (bytestream2_get_bytes_left(&gb) < 4)
        return AVERROR_INVALIDDATA;
    if (bytestream2_peek_le32(&gb) == 0x56781234) {
        bytestream2_skipu(&gb, 4);
        qpos = 0x111;
        speclen = 0xF + 3;
    } else {
        qpos = 0xFEE;
        speclen = 100;
    }

    while (dataleft > 0 && bytestream2_get_bytes_left(&gb) > 0) {
        tag = bytestream2_get_byteu(&gb);
        if ((tag == 0xFF) && (dataleft > 8)) {
            if (d_end - d < 8 || bytestream2_get_bytes_left(&gb) < 8)
                return AVERROR_INVALIDDATA;
            for (i = 0; i < 8; i++) {
                queue[qpos++] = *d++ = bytestream2_get_byteu(&gb);
                qpos &= QUEUE_MASK;
            }
            dataleft -= 8;
        } else {
            for (i = 0; i < 8; i++) {
                if (dataleft == 0)
                    break;
                if (tag & 0x01) {
                    if (d_end - d < 1 || bytestream2_get_bytes_left(&gb) < 1)
                        return AVERROR_INVALIDDATA;
                    queue[qpos++] = *d++ = bytestream2_get_byteu(&gb);
                    qpos &= QUEUE_MASK;
                    dataleft--;
                } else {
                    chainofs = bytestream2_get_byte(&gb);
                    chainofs |= ((bytestream2_peek_byte(&gb) & 0xF0) << 4);
                    chainlen = (bytestream2_get_byte(&gb) & 0x0F) + 3;
                    if (chainlen == speclen) {
                        chainlen = bytestream2_get_byte(&gb) + 0xF + 3;
                    }
                    if (d_end - d < chainlen)
                        return AVERROR_INVALIDDATA;
                    for (j = 0; j < chainlen; j++) {
                        *d = queue[chainofs++ & QUEUE_MASK];
                        queue[qpos++] = *d++;
                        qpos &= QUEUE_MASK;
                    }
                    dataleft -= chainlen;
                }
                tag >>= 1;
            }
        }
    }
    return d - dest;
}
