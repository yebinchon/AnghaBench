
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PutByteContext ;
typedef int GetByteContext ;


 int SEEK_SET ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_put_byte (int *,int) ;
 int bytestream2_seek (int *,int,int ) ;
 int bytestream2_tell_p (int *) ;

__attribute__((used)) static void lz_copy(PutByteContext *pb, GetByteContext *g2, int offset, unsigned len)
{
    int i;

    if (offset == -1) {
        int c;

        bytestream2_seek(g2, bytestream2_tell_p(pb) - 1, SEEK_SET);
        c = bytestream2_get_byte(g2);
        for (i = 0; i < len; i++) {
            bytestream2_put_byte(pb, c);
        }
    } else if (offset < 0) {
        int start = bytestream2_tell_p(pb) - (-offset);

        bytestream2_seek(g2, start, SEEK_SET);
        for (i = 0; i < len; i++) {
            bytestream2_put_byte(pb, bytestream2_get_byte(g2));
        }
    } else {
        int start = bytestream2_tell_p(pb) + offset;

        bytestream2_seek(g2, start, SEEK_SET);
        for (i = 0; i < len; i++) {
            bytestream2_put_byte(pb, bytestream2_get_byte(g2));
        }
    }
}
