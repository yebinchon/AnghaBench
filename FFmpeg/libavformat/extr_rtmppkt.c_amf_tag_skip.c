
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;
typedef int AMFDataType ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_be32 (int *) ;
 int bytestream2_get_be64 (int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static int amf_tag_skip(GetByteContext *gb)
{
    AMFDataType type;
    unsigned nb = -1;
    int parse_key = 1;

    if (bytestream2_get_bytes_left(gb) < 1)
        return -1;

    type = bytestream2_get_byte(gb);
    switch (type) {
    case 131:
        bytestream2_get_be64(gb);
        return 0;
    case 136:
        bytestream2_get_byte(gb);
        return 0;
    case 128:
        bytestream2_skip(gb, bytestream2_get_be16(gb));
        return 0;
    case 134:
        bytestream2_skip(gb, bytestream2_get_be32(gb));
        return 0;
    case 132:
        return 0;
    case 135:
        bytestream2_skip(gb, 10);
        return 0;
    case 137:
        parse_key = 0;
    case 133:
        nb = bytestream2_get_be32(gb);
    case 130:
        while (nb-- > 0 || type != 137) {
            int t;
            if (parse_key) {
                int size = bytestream2_get_be16(gb);
                if (!size) {
                    bytestream2_get_byte(gb);
                    break;
                }
                if (size < 0 || size >= bytestream2_get_bytes_left(gb))
                    return -1;
                bytestream2_skip(gb, size);
            }
            t = amf_tag_skip(gb);
            if (t < 0 || bytestream2_get_bytes_left(gb) <= 0)
                return -1;
        }
        return 0;
    case 129: return 0;
    default: return -1;
    }
}
