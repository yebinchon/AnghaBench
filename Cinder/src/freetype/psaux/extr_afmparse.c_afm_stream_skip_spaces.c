
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; } ;
typedef TYPE_1__* AFM_Stream ;


 int AFM_GETC () ;
 scalar_t__ AFM_IS_EOF (int) ;
 scalar_t__ AFM_IS_NEWLINE (int) ;
 scalar_t__ AFM_IS_SEP (int) ;
 int AFM_IS_SPACE (int) ;
 scalar_t__ AFM_STATUS_EOC (TYPE_1__*) ;
 int AFM_STREAM_STATUS_EOC ;
 int AFM_STREAM_STATUS_EOF ;
 int AFM_STREAM_STATUS_EOL ;

__attribute__((used)) static int
  afm_stream_skip_spaces( AFM_Stream stream )
  {
    int ch = 0;


    if ( AFM_STATUS_EOC( stream ) )
      return ';';

    while ( 1 )
    {
      ch = AFM_GETC();
      if ( !AFM_IS_SPACE( ch ) )
        break;
    }

    if ( AFM_IS_NEWLINE( ch ) )
      stream->status = AFM_STREAM_STATUS_EOL;
    else if ( AFM_IS_SEP( ch ) )
      stream->status = AFM_STREAM_STATUS_EOC;
    else if ( AFM_IS_EOF( ch ) )
      stream->status = AFM_STREAM_STATUS_EOF;

    return ch;
  }
