
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; scalar_t__ buffer_pos; char* buffer; int fd; scalar_t__ buffer_data_size; } ;
typedef TYPE_1__ FILE ;


 int SEEK_CUR ;
 int _IO_BUFSIZE ;
 int __FILE_BUFINPUT ;
 int __FILE_ERROR ;
 int lseek (int ,int,int ) ;
 int memset (char*,int ,int ) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ write (int ,char*,scalar_t__) ;

int fflush( FILE* stream ) {
    if ( stream->flags & __FILE_BUFINPUT ) {
        int tmp;

        tmp = ( int )stream->buffer_pos - ( int )stream->buffer_data_size;

        if ( tmp != 0 ) {
            lseek( stream->fd, tmp, SEEK_CUR );
        }

        stream->buffer_pos = 0;
        stream->buffer_data_size = 0;
    } else {
        if ( stream->buffer_pos > 0 ) {
            if ( write( stream->fd, stream->buffer, stream->buffer_pos ) != stream->buffer_pos ) {
    write(0,"\nerror file \n",strlen("\nerror file \n"));
                stream->flags |= __FILE_ERROR;
                return -1;
            }
   memset(stream->buffer,0,_IO_BUFSIZE);
            stream->buffer_pos = 0;
        }
    }

    return 0;
}
