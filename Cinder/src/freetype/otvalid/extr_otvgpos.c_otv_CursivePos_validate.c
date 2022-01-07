
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Int ;
typedef int FT_Bytes ;


 int EntryAnchor ;
 int ExitAnchor ;
 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_OPTIONAL_OFFSET (int) ;
 int OTV_OPTIONAL_TABLE (int) ;
 int OTV_SIZE_CHECK (int) ;
 int OTV_TRACE (char*) ;
 int otv_Anchor_validate (int,int ) ;
 int otv_Coverage_validate (int,int ,int ) ;

__attribute__((used)) static void
  otv_CursivePos_validate( FT_Bytes table,
                           OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt PosFormat;


    OTV_NAME_ENTER( "CursivePos" );

    OTV_LIMIT_CHECK( 2 );
    PosFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format %d)\n", PosFormat ));

    switch ( PosFormat )
    {
    case 1:
      {
        FT_UInt table_size;
        FT_UInt Coverage, EntryExitCount;

        OTV_OPTIONAL_TABLE( EntryAnchor );
        OTV_OPTIONAL_TABLE( ExitAnchor );


        OTV_LIMIT_CHECK( 4 );
        Coverage = FT_NEXT_USHORT( p );
        EntryExitCount = FT_NEXT_USHORT( p );

        OTV_TRACE(( " (EntryExitCount = %d)\n", EntryExitCount ));

        otv_Coverage_validate( table + Coverage,
                               otvalid,
                               (FT_Int)EntryExitCount );

        OTV_LIMIT_CHECK( EntryExitCount * 4 );

        table_size = EntryExitCount * 4 + 4;


        for ( ; EntryExitCount > 0; EntryExitCount-- )
        {
          OTV_OPTIONAL_OFFSET( EntryAnchor );
          OTV_OPTIONAL_OFFSET( ExitAnchor );

          OTV_SIZE_CHECK( EntryAnchor );
          if ( EntryAnchor )
            otv_Anchor_validate( table + EntryAnchor, otvalid );

          OTV_SIZE_CHECK( ExitAnchor );
          if ( ExitAnchor )
            otv_Anchor_validate( table + ExitAnchor, otvalid );
        }
      }
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
