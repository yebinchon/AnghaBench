
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum TiffTypes { ____Placeholder_TiffTypes } TiffTypes ;
typedef int GetByteContext ;
typedef int AVDictionary ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_freep (char**) ;
 char* av_malloc (int) ;
 int bytestream2_seek (int *,int,int ) ;
 int bytestream2_tell (int *) ;
 int exif_add_metadata (void*,unsigned int,int,char*,int *,int *,int,int **) ;
 char* exif_get_tag_name (unsigned int) ;
 int ff_exif_decode_ifd (void*,int *,int,int,int **) ;
 int ff_tis_ifd (unsigned int) ;
 int ff_tread_tag (int *,int,unsigned int*,int*,unsigned int*,int*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int exif_decode_tag(void *logctx, GetByteContext *gbytes, int le,
                           int depth, AVDictionary **metadata)
{
    int ret, cur_pos;
    unsigned id, count;
    enum TiffTypes type;

    if (depth > 2) {
        return 0;
    }

    ff_tread_tag(gbytes, le, &id, &type, &count, &cur_pos);

    if (!bytestream2_tell(gbytes)) {
        bytestream2_seek(gbytes, cur_pos, SEEK_SET);
        return 0;
    }



    ret = ff_tis_ifd(id);
    if (ret) {
        ret = ff_exif_decode_ifd(logctx, gbytes, le, depth + 1, metadata);
    } else {
        const char *name = exif_get_tag_name(id);
        char *use_name = (char*) name;

        if (!use_name) {
            use_name = av_malloc(7);
            if (!use_name) {
                return AVERROR(ENOMEM);
            }
            snprintf(use_name, 7, "0x%04X", id);
        }

        ret = exif_add_metadata(logctx, count, type, use_name, ((void*)0),
                                gbytes, le, metadata);

        if (!name) {
            av_freep(&use_name);
        }
    }

    bytestream2_seek(gbytes, cur_pos, SEEK_SET);

    return ret;
}
