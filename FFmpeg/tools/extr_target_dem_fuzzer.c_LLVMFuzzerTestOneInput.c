
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int int64_t ;
struct TYPE_15__ {TYPE_2__* pb; } ;
struct TYPE_14__ {struct TYPE_14__* buffer; } ;
struct TYPE_13__ {int filesize; size_t fuzz_size; int const* fuzz; scalar_t__ pos; } ;
typedef TYPE_1__ IOContext ;
typedef int GetByteContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AV_LOG_PANIC ;
 int FUZZ_TAG ;
 int av_freep (TYPE_2__**) ;
 int av_init_packet (int *) ;
 int av_log_set_level (int ) ;
 int * av_malloc (int) ;
 int av_packet_unref (int *) ;
 int av_read_frame (TYPE_3__*,int *) ;
 int av_register_all () ;
 int avcodec_register_all () ;
 TYPE_3__* avformat_alloc_context () ;
 int avformat_close_input (TYPE_3__**) ;
 int avformat_find_stream_info (TYPE_3__*,int *) ;
 int avformat_free_context (TYPE_3__*) ;
 int avformat_open_input (TYPE_3__**,char*,int *,int *) ;
 TYPE_2__* avio_alloc_context (int *,int,int ,TYPE_1__*,int ,int *,int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_get_le64 (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int error (char*) ;
 int io_read ;
 int * io_seek ;
 scalar_t__ maxiteration ;
 int memcpy (char*,int const*,int) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
    const uint64_t fuzz_tag = FUZZ_TAG;
    uint32_t it = 0;
    AVFormatContext *avfmt = avformat_alloc_context();
    AVPacket pkt;
    char filename[1025] = {0};
    AVIOContext *fuzzed_pb = ((void*)0);
    uint8_t *io_buffer;
    int io_buffer_size = 32768;
    int64_t filesize = size;
    IOContext opaque;
    static int c;
    int seekable = 0;
    int ret;

    if (!c) {
        av_register_all();
        avcodec_register_all();
        av_log_set_level(AV_LOG_PANIC);
        c=1;
    }

    if (!avfmt)
        error("Failed avformat_alloc_context()");

    if (size > 2048) {
        GetByteContext gbc;
        memcpy (filename, data + size - 1024, 1024);
        bytestream2_init(&gbc, data + size - 2048, 1024);
        size -= 2048;

        io_buffer_size = bytestream2_get_le32(&gbc) & 0xFFFFFFF;
        seekable = bytestream2_get_byte(&gbc) & 1;
        filesize = bytestream2_get_le64(&gbc) & 0x7FFFFFFFFFFFFFFF;
    }
    io_buffer = av_malloc(io_buffer_size);
    if (!io_buffer)
        error("Failed to allocate io_buffer");

    opaque.filesize = filesize;
    opaque.pos = 0;
    opaque.fuzz = data;
    opaque.fuzz_size= size;
    fuzzed_pb = avio_alloc_context(io_buffer, io_buffer_size, 0, &opaque,
                                   io_read, ((void*)0), seekable ? io_seek : ((void*)0));
    if (!fuzzed_pb)
        error("avio_alloc_context failed");

    avfmt->pb = fuzzed_pb;

    ret = avformat_open_input(&avfmt, filename, ((void*)0), ((void*)0));
    if (ret < 0) {
        av_freep(&fuzzed_pb->buffer);
        av_freep(&fuzzed_pb);
        avformat_free_context(avfmt);
        return 0;
    }

    ret = avformat_find_stream_info(avfmt, ((void*)0));

    av_init_packet(&pkt);



    for(it = 0; it < maxiteration; it++) {
        ret = av_read_frame(avfmt, &pkt);
        if (ret < 0)
            break;
        av_packet_unref(&pkt);
    }
end:
    av_freep(&fuzzed_pb->buffer);
    av_freep(&fuzzed_pb);
    avformat_close_input(&avfmt);

    return 0;
}
