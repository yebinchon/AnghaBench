
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVIOContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 unsigned int FFMIN (size_t,unsigned int) ;
 unsigned int const INT_MAX ;
 int * av_fast_realloc (int *,unsigned int*,unsigned int) ;
 int av_free (int *) ;
 unsigned int avio_read (int *,int *,unsigned int) ;

__attribute__((used)) static int mov_try_read_block(AVIOContext *pb, size_t size, uint8_t **data)
{
    const unsigned int block_size = 1024 * 1024;
    uint8_t *buffer = ((void*)0);
    unsigned int alloc_size = 0, offset = 0;
    while (offset < size) {
        unsigned int new_size =
            alloc_size >= INT_MAX - block_size ? INT_MAX : alloc_size + block_size;
        uint8_t *new_buffer = av_fast_realloc(buffer, &alloc_size, new_size);
        unsigned int to_read = FFMIN(size, alloc_size) - offset;
        if (!new_buffer) {
            av_free(buffer);
            return AVERROR(ENOMEM);
        }
        buffer = new_buffer;

        if (avio_read(pb, buffer + offset, to_read) != to_read) {
            av_free(buffer);
            return AVERROR_INVALIDDATA;
        }
        offset += to_read;
    }

    *data = buffer;
    return 0;
}
