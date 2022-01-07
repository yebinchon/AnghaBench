
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* headers; int fifo_buf; scalar_t__ nb_headers_found; } ;
typedef TYPE_1__ FLACParseContext ;
typedef TYPE_2__ FLACHeaderMarker ;


 int AV_RB16 (int *) ;
 int FFMAX (int,int) ;
 int MAX_FRAME_HEADER_SIZE ;
 int av_fifo_size (int ) ;
 int find_headers_search (TYPE_1__*,int *,int,int) ;
 int find_headers_search_validate (TYPE_1__*,int) ;
 int * flac_fifo_read (TYPE_1__*,int,int*) ;

__attribute__((used)) static int find_new_headers(FLACParseContext *fpc, int search_start)
{
    FLACHeaderMarker *end;
    int search_end, size = 0, read_len, temp;
    uint8_t *buf;
    fpc->nb_headers_found = 0;


    search_end = av_fifo_size(fpc->fifo_buf) - (MAX_FRAME_HEADER_SIZE - 1);
    read_len = search_end - search_start + 1;
    buf = flac_fifo_read(fpc, search_start, &read_len);
    size = find_headers_search(fpc, buf, read_len, search_start);
    search_start += read_len - 1;


    if (search_start != search_end) {
        uint8_t wrap[2];

        wrap[0] = buf[read_len - 1];

        read_len = search_end - (search_start + 1) + 1;

        buf = flac_fifo_read(fpc, search_start + 1, &read_len);
        wrap[1] = buf[0];

        if ((AV_RB16(wrap) & 0xFFFE) == 0xFFF8) {
            temp = find_headers_search_validate(fpc, search_start);
            size = FFMAX(size, temp);
        }
        search_start++;


        temp = find_headers_search(fpc, buf, read_len, search_start);
        size = FFMAX(size, temp);
        search_start += read_len - 1;
    }


    if (!size && fpc->headers)
        for (end = fpc->headers; end; end = end->next)
            size++;
    return size;
}
