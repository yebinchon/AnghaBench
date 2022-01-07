
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int) ;
 int OTV_ENTER ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_TRACE (char*) ;
 int otv_Device_validate (int,int ) ;

__attribute__((used)) static void
  otv_CaretValue_validate( FT_Bytes table,
                           OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt CaretValueFormat;


    OTV_ENTER;

    OTV_LIMIT_CHECK( 4 );

    CaretValueFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format = %d)\n", CaretValueFormat ));

    switch ( CaretValueFormat )
    {
    case 1:

      break;

    case 2:

      break;

    case 3:
      p += 2;

      OTV_LIMIT_CHECK( 2 );


      otv_Device_validate( table + FT_NEXT_USHORT( p ), otvalid );
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
