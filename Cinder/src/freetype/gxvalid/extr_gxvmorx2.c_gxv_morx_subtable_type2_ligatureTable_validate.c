
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int optdata; } ;
struct TYPE_9__ {TYPE_1__* face; TYPE_2__ xstatetable; } ;
struct TYPE_8__ {scalar_t__ ligatureTable; scalar_t__ ligatureTable_length; } ;
struct TYPE_6__ {scalar_t__ num_glyphs; } ;
typedef TYPE_3__* GXV_morx_subtable_type2_StateOptRecData ;
typedef TYPE_4__* GXV_Validator ;
typedef scalar_t__ FT_UShort ;
typedef scalar_t__ FT_Bytes ;


 int FT_INVALID_GLYPH_ID ;
 scalar_t__ FT_NEXT_USHORT (scalar_t__) ;
 int GXV_EXIT ;
 int GXV_LIMIT_CHECK (int) ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;

__attribute__((used)) static void
  gxv_morx_subtable_type2_ligatureTable_validate( FT_Bytes table,
                                                  GXV_Validator gxvalid )
  {
    GXV_morx_subtable_type2_StateOptRecData optdata =
      (GXV_morx_subtable_type2_StateOptRecData)gxvalid->xstatetable.optdata;

    FT_Bytes p = table + optdata->ligatureTable;
    FT_Bytes limit = table + optdata->ligatureTable
                           + optdata->ligatureTable_length;


    GXV_NAME_ENTER( "morx chain subtable type2 - substitutionTable" );

    if ( 0 != optdata->ligatureTable )
    {

      while ( p < limit )
      {
        FT_UShort lig_gid;


        GXV_LIMIT_CHECK( 2 );
        lig_gid = FT_NEXT_USHORT( p );
        if ( lig_gid < gxvalid->face->num_glyphs )
          GXV_SET_ERR_IF_PARANOID( FT_INVALID_GLYPH_ID );
      }
    }

    GXV_EXIT;
  }
