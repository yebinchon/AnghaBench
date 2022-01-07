
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int header_parsed; } ;
struct TYPE_7__ {int chunk_seq; TYPE_2__ mms; } ;
typedef TYPE_1__ MMSHContext ;
typedef TYPE_2__ MMSContext ;
typedef int ChunkType ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;



 int EIO ;
 int av_log (int *,int ,char*,...) ;
 int get_chunk_header (TYPE_1__*,int*) ;
 int get_http_header_data (TYPE_1__*) ;
 int read_data_packet (TYPE_1__*,int) ;

__attribute__((used)) static int handle_chunk_type(MMSHContext *mmsh)
{
    MMSContext *mms = &mmsh->mms;
    int res, len = 0;
    ChunkType chunk_type;
    chunk_type = get_chunk_header(mmsh, &len);

    switch (chunk_type) {
    case 129:
        mmsh->chunk_seq = 0;
        av_log(((void*)0), AV_LOG_ERROR, "Stream ended!\n");
        return AVERROR(EIO);
    case 128:
        mms->header_parsed = 0;
        if (res = get_http_header_data(mmsh)) {
            av_log(((void*)0), AV_LOG_ERROR,"Stream changed! Failed to get new header!\n");
            return res;
        }
        break;
    case 130:
        return read_data_packet(mmsh, len);
    default:
        av_log(((void*)0), AV_LOG_ERROR, "Recv other type packet %d\n", chunk_type);
        return AVERROR_INVALIDDATA;
    }
    return 0;
}
