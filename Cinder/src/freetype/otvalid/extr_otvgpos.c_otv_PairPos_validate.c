
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int extra3; } ;
typedef TYPE_1__* OTV_Validator ;
typedef int FT_UInt ;
typedef int FT_Bytes ;


 int FT_INVALID_FORMAT ;
 int FT_NEXT_USHORT (int) ;
 int OTV_EXIT ;
 int OTV_LIMIT_CHECK (int) ;
 int OTV_NAME_ENTER (char*) ;
 int OTV_TRACE (char*) ;
 int otv_ClassDef_validate (int,TYPE_1__*) ;
 int otv_Coverage_validate (int,TYPE_1__*,int) ;
 int otv_PairSet_validate (int,int,int,TYPE_1__*) ;
 int otv_ValueRecord_validate (int,int,TYPE_1__*) ;
 int otv_value_length (int) ;

__attribute__((used)) static void
  otv_PairPos_validate( FT_Bytes table,
                        OTV_Validator otvalid )
  {
    FT_Bytes p = table;
    FT_UInt PosFormat;


    OTV_NAME_ENTER( "PairPos" );

    OTV_LIMIT_CHECK( 2 );
    PosFormat = FT_NEXT_USHORT( p );

    OTV_TRACE(( " (format %d)\n", PosFormat ));

    switch ( PosFormat )
    {
    case 1:
      {
        FT_UInt Coverage, ValueFormat1, ValueFormat2, PairSetCount;


        OTV_LIMIT_CHECK( 8 );
        Coverage = FT_NEXT_USHORT( p );
        ValueFormat1 = FT_NEXT_USHORT( p );
        ValueFormat2 = FT_NEXT_USHORT( p );
        PairSetCount = FT_NEXT_USHORT( p );

        OTV_TRACE(( " (PairSetCount = %d)\n", PairSetCount ));

        otv_Coverage_validate( table + Coverage, otvalid, -1 );

        OTV_LIMIT_CHECK( PairSetCount * 2 );


        for ( ; PairSetCount > 0; PairSetCount-- )
          otv_PairSet_validate( table + FT_NEXT_USHORT( p ),
                                ValueFormat1, ValueFormat2, otvalid );
      }
      break;

    case 2:
      {
        FT_UInt Coverage, ValueFormat1, ValueFormat2, ClassDef1, ClassDef2;
        FT_UInt ClassCount1, ClassCount2, len_value1, len_value2, count;


        OTV_LIMIT_CHECK( 14 );
        Coverage = FT_NEXT_USHORT( p );
        ValueFormat1 = FT_NEXT_USHORT( p );
        ValueFormat2 = FT_NEXT_USHORT( p );
        ClassDef1 = FT_NEXT_USHORT( p );
        ClassDef2 = FT_NEXT_USHORT( p );
        ClassCount1 = FT_NEXT_USHORT( p );
        ClassCount2 = FT_NEXT_USHORT( p );

        OTV_TRACE(( " (ClassCount1 = %d)\n", ClassCount1 ));
        OTV_TRACE(( " (ClassCount2 = %d)\n", ClassCount2 ));

        len_value1 = otv_value_length( ValueFormat1 );
        len_value2 = otv_value_length( ValueFormat2 );

        otv_Coverage_validate( table + Coverage, otvalid, -1 );
        otv_ClassDef_validate( table + ClassDef1, otvalid );
        otv_ClassDef_validate( table + ClassDef2, otvalid );

        OTV_LIMIT_CHECK( ClassCount1 * ClassCount2 *
                         ( len_value1 + len_value2 ) );

        otvalid->extra3 = table;


        for ( ; ClassCount1 > 0; ClassCount1-- )
        {

          for ( count = ClassCount2; count > 0; count-- )
          {
            if ( ValueFormat1 )

              otv_ValueRecord_validate( p, ValueFormat1, otvalid );
            p += len_value1;

            if ( ValueFormat2 )

              otv_ValueRecord_validate( p, ValueFormat2, otvalid );
            p += len_value2;
          }
        }
      }
      break;

    default:
      FT_INVALID_FORMAT;
    }

    OTV_EXIT;
  }
