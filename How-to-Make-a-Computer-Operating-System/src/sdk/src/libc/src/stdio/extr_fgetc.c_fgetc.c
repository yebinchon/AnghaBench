
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_5__ {int flags; int unget_buffer; size_t buffer_pos; size_t buffer_data_size; unsigned char* buffer; int buffer_size; int fd; scalar_t__ has_ungotten; } ;
typedef TYPE_1__ FILE ;


 int EOF ;
 int __FILE_BUFINPUT ;
 int __FILE_CAN_READ ;
 int __FILE_EOF ;
 int __FILE_ERROR ;
 scalar_t__ __set_stream_flags (TYPE_1__*,int ) ;
 scalar_t__ feof (TYPE_1__*) ;
 int printf (char*) ;
 scalar_t__ read (int ,unsigned char*,int ) ;

int fgetc( FILE* stream ) {
    unsigned char c;



    if ( ( ( stream->flags & __FILE_CAN_READ ) == 0 ) ||
         ( __set_stream_flags( stream, __FILE_BUFINPUT ) ) ) {
        stream->flags |= __FILE_ERROR;
        printf("EOF ! \n");
        return EOF;
    }



    if ( stream->has_ungotten ) {
        stream->has_ungotten = 0;
        printf("un get ! \n");
        return stream->unget_buffer;
    }



    if ( feof( stream ) ) {
  printf("EOF ! \n");
        return EOF;
    }



    if ( stream->buffer_pos >= stream->buffer_data_size ) {
        ssize_t length;

        length = read( stream->fd, stream->buffer, stream->buffer_size );
        if ( length == 0 ) {
            stream->flags |= __FILE_EOF;
            printf("EOF ! \n");
            return EOF;
        } else if ( length < 0 ) {
            stream->flags |= __FILE_ERROR;
            printf("EOF ! \n");
            return EOF;
        }
        stream->buffer_pos = 0;
        stream->buffer_data_size = length;
    }



    c = stream->buffer[ stream->buffer_pos ];

    stream->buffer_pos++;

    return c;
}
