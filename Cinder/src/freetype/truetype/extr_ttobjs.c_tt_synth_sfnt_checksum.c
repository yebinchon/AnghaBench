
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_ULong ;
typedef int FT_UInt32 ;
typedef int FT_UInt ;
typedef int FT_Stream ;
typedef int FT_Error ;


 scalar_t__ FT_FRAME_ENTER (int) ;
 int FT_FRAME_EXIT () ;
 scalar_t__ FT_GET_BYTE () ;
 scalar_t__ FT_GET_ULONG () ;

__attribute__((used)) static FT_UInt32
  tt_synth_sfnt_checksum( FT_Stream stream,
                          FT_ULong length )
  {
    FT_Error error;
    FT_UInt32 checksum = 0;
    FT_UInt i;


    if ( FT_FRAME_ENTER( length ) )
      return 0;

    for ( ; length > 3; length -= 4 )
      checksum += (FT_UInt32)FT_GET_ULONG();

    for ( i = 3; length > 0; length--, i-- )
      checksum += (FT_UInt32)FT_GET_BYTE() << ( i * 8 );

    FT_FRAME_EXIT();

    return checksum;
  }
