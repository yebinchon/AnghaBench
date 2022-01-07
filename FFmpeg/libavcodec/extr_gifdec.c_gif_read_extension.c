
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int transparent_color_index; int gce_disposal; int avctx; int gb; } ;
typedef TYPE_1__ GifState ;


 int AVERROR_INVALIDDATA ;
 int GCE_DISPOSAL_NONE ;

 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_byteu (int *) ;
 int bytestream2_skipu (int *,int) ;
 int ff_dlog (int ,char*,int,...) ;

__attribute__((used)) static int gif_read_extension(GifState *s)
{
    int ext_code, ext_len, gce_flags, gce_transparent_index;



    if (bytestream2_get_bytes_left(&s->gb) < 2)
        return AVERROR_INVALIDDATA;

    ext_code = bytestream2_get_byteu(&s->gb);
    ext_len = bytestream2_get_byteu(&s->gb);

    ff_dlog(s->avctx, "ext_code=0x%x len=%d\n", ext_code, ext_len);

    switch(ext_code) {
    case 128:
        if (ext_len != 4)
            goto discard_ext;



        if (bytestream2_get_bytes_left(&s->gb) < 5)
            return AVERROR_INVALIDDATA;

        gce_flags = bytestream2_get_byteu(&s->gb);
        bytestream2_skipu(&s->gb, 2);
        gce_transparent_index = bytestream2_get_byteu(&s->gb);
        if (gce_flags & 0x01)
            s->transparent_color_index = gce_transparent_index;
        else
            s->transparent_color_index = -1;
        s->gce_disposal = (gce_flags >> 2) & 0x7;

        ff_dlog(s->avctx, "gce_flags=%x tcolor=%d disposal=%d\n",
               gce_flags,
               s->transparent_color_index, s->gce_disposal);

        if (s->gce_disposal > 3) {
            s->gce_disposal = GCE_DISPOSAL_NONE;
            ff_dlog(s->avctx, "invalid value in gce_disposal (%d). Using default value of 0.\n", ext_len);
        }

        ext_len = bytestream2_get_byteu(&s->gb);
        break;
    }


 discard_ext:
    while (ext_len) {

        if (bytestream2_get_bytes_left(&s->gb) < ext_len + 1)
            return AVERROR_INVALIDDATA;

        bytestream2_skipu(&s->gb, ext_len);
        ext_len = bytestream2_get_byteu(&s->gb);

        ff_dlog(s->avctx, "ext_len1=%d\n", ext_len);
    }
    return 0;
}
