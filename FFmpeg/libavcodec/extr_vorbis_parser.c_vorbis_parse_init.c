
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int extradata_parsed; int valid_extradata; size_t* mode_blocksize; int * blocksize; int previous_blocksize; int * class; } ;
typedef TYPE_1__ AVVorbisParseContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_1__*,int ,char*) ;
 int avpriv_split_xiph_headers (int const*,int,int,int const**,int*) ;
 int parse_id_header (TYPE_1__*,int const*,int) ;
 int parse_setup_header (TYPE_1__*,int const*,int) ;
 int vorbis_parser_class ;

__attribute__((used)) static int vorbis_parse_init(AVVorbisParseContext *s,
                             const uint8_t *extradata, int extradata_size)
{
    const uint8_t *header_start[3];
    int header_len[3];
    int ret;

    s->class = &vorbis_parser_class;
    s->extradata_parsed = 1;

    if ((ret = avpriv_split_xiph_headers(extradata,
                                         extradata_size, 30,
                                         header_start, header_len)) < 0) {
        av_log(s, AV_LOG_ERROR, "Extradata corrupt.\n");
        return ret;
    }

    if ((ret = parse_id_header(s, header_start[0], header_len[0])) < 0)
        return ret;

    if ((ret = parse_setup_header(s, header_start[2], header_len[2])) < 0)
        return ret;

    s->valid_extradata = 1;
    s->previous_blocksize = s->blocksize[s->mode_blocksize[0]];

    return 0;
}
