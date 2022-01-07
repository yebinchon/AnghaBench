
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GetByteContext ;
typedef int AVDictionary ;


 int AV_LOG_WARNING ;
 int av_log (void*,int ,char*,char const*,int) ;
 int avpriv_request_sample (void*,char*,int) ;
 int ff_tadd_bytes_metadata (int,char const*,char const*,int *,int,int,int **) ;
 int ff_tadd_doubles_metadata (int,char const*,char const*,int *,int,int **) ;
 int ff_tadd_long_metadata (int,char const*,char const*,int *,int,int **) ;
 int ff_tadd_rational_metadata (int,char const*,char const*,int *,int,int **) ;
 int ff_tadd_shorts_metadata (int,char const*,char const*,int *,int,int,int **) ;
 int ff_tadd_string_metadata (int,char const*,int *,int,int **) ;

__attribute__((used)) static int exif_add_metadata(void *logctx, int count, int type,
                             const char *name, const char *sep,
                             GetByteContext *gb, int le,
                             AVDictionary **metadata)
{
    switch(type) {
    case 0:
        av_log(logctx, AV_LOG_WARNING,
               "Invalid TIFF tag type 0 found for %s with size %d\n",
               name, count);
        return 0;
    case 137 : return ff_tadd_doubles_metadata(count, name, sep, gb, le, metadata);
    case 130 : return ff_tadd_shorts_metadata(count, name, sep, gb, le, 1, metadata);
    case 133 : return ff_tadd_shorts_metadata(count, name, sep, gb, le, 0, metadata);
    case 134 : return ff_tadd_bytes_metadata(count, name, sep, gb, le, 1, metadata);
    case 138 :
    case 128: return ff_tadd_bytes_metadata(count, name, sep, gb, le, 0, metadata);
    case 129 : return ff_tadd_string_metadata(count, name, gb, le, metadata);
    case 131:
    case 135 : return ff_tadd_rational_metadata(count, name, sep, gb, le, metadata);
    case 132 :
    case 136 : return ff_tadd_long_metadata(count, name, sep, gb, le, metadata);
    default:
        avpriv_request_sample(logctx, "TIFF tag type (%u)", type);
        return 0;
    };
}
