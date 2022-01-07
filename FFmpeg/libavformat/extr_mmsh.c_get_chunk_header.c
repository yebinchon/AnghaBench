
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int mms_hd; } ;
struct TYPE_4__ {int chunk_seq; TYPE_2__ mms; } ;
typedef TYPE_1__ MMSHContext ;
typedef TYPE_2__ MMSContext ;
typedef int ChunkType ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RL16 (int *) ;
 int AV_RL32 (int *) ;
 int CHUNK_HEADER_LENGTH ;




 int EIO ;
 int EXT_HEADER_LENGTH ;
 int av_log (int *,int ,char*,...) ;
 int ffurl_read_complete (int ,int *,int) ;

__attribute__((used)) static ChunkType get_chunk_header(MMSHContext *mmsh, int *len)
{
    MMSContext *mms = &mmsh->mms;
    uint8_t chunk_header[CHUNK_HEADER_LENGTH];
    uint8_t ext_header[EXT_HEADER_LENGTH];
    ChunkType chunk_type;
    int chunk_len, res, ext_header_len;

    res = ffurl_read_complete(mms->mms_hd, chunk_header, CHUNK_HEADER_LENGTH);
    if (res != CHUNK_HEADER_LENGTH) {
        av_log(((void*)0), AV_LOG_ERROR, "Read data packet header failed!\n");
        return AVERROR(EIO);
    }
    chunk_type = AV_RL16(chunk_header);
    chunk_len = AV_RL16(chunk_header + 2);

    switch (chunk_type) {
    case 129:
    case 128:
        ext_header_len = 4;
        break;
    case 131:
    case 130:
        ext_header_len = 8;
        break;
    default:
        av_log(((void*)0), AV_LOG_ERROR, "Strange chunk type %d\n", chunk_type);
        return AVERROR_INVALIDDATA;
    }

    res = ffurl_read_complete(mms->mms_hd, ext_header, ext_header_len);
    if (res != ext_header_len) {
        av_log(((void*)0), AV_LOG_ERROR, "Read ext header failed!\n");
        return AVERROR(EIO);
    }
    *len = chunk_len - ext_header_len;
    if (chunk_type == 129 || chunk_type == 130)
        mmsh->chunk_seq = AV_RL32(ext_header);
    return chunk_type;
}
