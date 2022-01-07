
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (int) ;
 int OTV_OPTIONAL_TABLE (int) ;
 int OTV_SIZE_CHECK (int) ;
 int OTV_TRACE (char*) ;
 int XDeviceTable ;
 int YDeviceTable ;
 int otv_Device_validate (int,int ) ;

__attribute__((used)) static void
  otv_Anchor_validate( FT_Bytes table,
                       OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt AnchorFormat;


    OTV_NAME_ENTER( "Anchor");

    OTV_LIMIT_CHECK( 6 );
    AnchorFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format %d)\n", AnchorFormat ));

    p += 4;

    switch ( AnchorFormat )
    {
    case 1:
      break;

    case 2:
      OTV_LIMIT_CHECK( 2 );
      break;

    case 3:
      {
        FT_UInt table_size;

        OTV_OPTIONAL_TABLE( XDeviceTable );
        OTV_OPTIONAL_TABLE( YDeviceTable );


        OTV_LIMIT_CHECK( 4 );
        OTV_OPTIONAL_OFFSET( XDeviceTable );
        OTV_OPTIONAL_OFFSET( YDeviceTable );

        table_size = 6 + 4;

        OTV_SIZE_CHECK( XDeviceTable );
        if ( XDeviceTable )
          otv_Device_validate( table + XDeviceTable, otvalid );

        OTV_SIZE_CHECK( YDeviceTable );
        if ( YDeviceTable )
          otv_Device_validate( table + YDeviceTable, otvalid );
      }
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
