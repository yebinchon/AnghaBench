
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;
typedef int ID3v2ExtraMeta ;
typedef int AVIOContext ;
typedef int AVFormatContext ;
typedef int AVDictionary ;


 int ID3v2_HEADER_SIZE ;
 int SEEK_SET ;
 int avio_read (int *,int*,int) ;
 int avio_seek (int *,int,int ) ;
 int avio_tell (int *) ;
 int ff_id3v2_34_metadata_conv ;
 int ff_id3v2_4_metadata_conv ;
 int ff_id3v2_match (int*,char const*) ;
 int ff_metadata_conv (int **,int *,int ) ;
 int ffio_ensure_seekback (int *,int) ;
 int id3v2_2_metadata_conv ;
 int id3v2_parse (int *,int **,int *,int,int,int,int **) ;
 int merge_date (int **) ;

__attribute__((used)) static void id3v2_read_internal(AVIOContext *pb, AVDictionary **metadata,
                                AVFormatContext *s, const char *magic,
                                ID3v2ExtraMeta **extra_meta, int64_t max_search_size)
{
    int len, ret;
    uint8_t buf[ID3v2_HEADER_SIZE];
    int found_header;
    int64_t start, off;

    if (max_search_size && max_search_size < ID3v2_HEADER_SIZE)
        return;

    start = avio_tell(pb);
    do {

        off = avio_tell(pb);
        if (max_search_size && off - start >= max_search_size - ID3v2_HEADER_SIZE) {
            avio_seek(pb, off, SEEK_SET);
            break;
        }

        ret = ffio_ensure_seekback(pb, ID3v2_HEADER_SIZE);
        if (ret >= 0)
            ret = avio_read(pb, buf, ID3v2_HEADER_SIZE);
        if (ret != ID3v2_HEADER_SIZE) {
            avio_seek(pb, off, SEEK_SET);
            break;
        }
        found_header = ff_id3v2_match(buf, magic);
        if (found_header) {

            len = ((buf[6] & 0x7f) << 21) |
                  ((buf[7] & 0x7f) << 14) |
                  ((buf[8] & 0x7f) << 7) |
                   (buf[9] & 0x7f);
            id3v2_parse(pb, metadata, s, len, buf[3], buf[5], extra_meta);
        } else {
            avio_seek(pb, off, SEEK_SET);
        }
    } while (found_header);
    ff_metadata_conv(metadata, ((void*)0), ff_id3v2_34_metadata_conv);
    ff_metadata_conv(metadata, ((void*)0), id3v2_2_metadata_conv);
    ff_metadata_conv(metadata, ((void*)0), ff_id3v2_4_metadata_conv);
    merge_date(metadata);
}
