
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cursor; } ;
typedef int FT_UShort ;
typedef int FT_ULong ;
typedef TYPE_1__* FT_Stream ;
typedef scalar_t__ FT_Error ;


 scalar_t__ FT_Err_Ok ;
 int FT_FRAME_ENTER (size_t) ;
 int FT_FRAME_EXIT () ;
 scalar_t__ FT_STREAM_SEEK (int ) ;
 scalar_t__ FT_THROW (int ) ;
 int Unknown_File_Format ;
 scalar_t__ ft_memcmp (int ,char const*,size_t) ;
 scalar_t__ read_pfb_tag (TYPE_1__*,int*,int *) ;

__attribute__((used)) static FT_Error
  check_type1_format( FT_Stream stream,
                      const char* header_string,
                      size_t header_length )
  {
    FT_Error error;
    FT_UShort tag;
    FT_ULong dummy;


    if ( FT_STREAM_SEEK( 0 ) )
      goto Exit;

    error = read_pfb_tag( stream, &tag, &dummy );
    if ( error )
      goto Exit;




    if ( tag != 0x8001U && FT_STREAM_SEEK( 0 ) )
      goto Exit;

    if ( !FT_FRAME_ENTER( header_length ) )
    {
      error = FT_Err_Ok;

      if ( ft_memcmp( stream->cursor, header_string, header_length ) != 0 )
        error = FT_THROW( Unknown_File_Format );

      FT_FRAME_EXIT();
    }

  Exit:
    return error;
  }
