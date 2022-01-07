
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int optdata; } ;
struct TYPE_9__ {TYPE_2__* face; TYPE_1__ xstatetable; } ;
struct TYPE_8__ {scalar_t__ ligActionTable; } ;
struct TYPE_7__ {scalar_t__ num_glyphs; } ;
typedef TYPE_3__* GXV_morx_subtable_type2_StateOptRecData ;
typedef TYPE_4__* GXV_Validator ;
typedef int FT_UShort ;
typedef int FT_ULong ;
typedef scalar_t__ FT_Long ;
typedef scalar_t__ FT_Bytes ;


 int FT_INVALID_OFFSET ;
 int FT_NEXT_ULONG (scalar_t__) ;
 int GXV_MORX_LIGACTION_ENTRY_SIZE ;
 int GXV_SET_ERR_IF_PARANOID (int ) ;
 int GXV_TRACE (char*) ;

__attribute__((used)) static void
  gxv_morx_subtable_type2_ligActionIndex_validate(
    FT_Bytes table,
    FT_UShort ligActionIndex,
    GXV_Validator gxvalid )
  {

    GXV_morx_subtable_type2_StateOptRecData optdata =
      (GXV_morx_subtable_type2_StateOptRecData)gxvalid->xstatetable.optdata;

    FT_Bytes lat_base = table + optdata->ligActionTable;
    FT_Bytes p = lat_base +
                         ligActionIndex * GXV_MORX_LIGACTION_ENTRY_SIZE;
    FT_Bytes lat_limit = lat_base + optdata->ligActionTable;


    if ( p < lat_base )
    {
      GXV_TRACE(( "p < lat_base (%d byte rewind)\n", lat_base - p ));
      FT_INVALID_OFFSET;
    }
    else if ( lat_limit < p )
    {
      GXV_TRACE(( "lat_limit < p (%d byte overrun)\n", p - lat_limit ));
      FT_INVALID_OFFSET;
    }

    {

      FT_ULong lig_action;




      FT_ULong offset;
      FT_Long gid_limit;


      lig_action = FT_NEXT_ULONG( p );





      offset = lig_action & 0x3FFFFFFFUL;



      if ( ( offset & 0x3FFF0000UL ) == 0x3FFF0000UL )
      {
        gid_limit = gxvalid->face->num_glyphs -
                    (FT_Long)( offset & 0x0000FFFFUL );
        if ( gid_limit > 0 )
          return;

        GXV_TRACE(( "ligature action table includes"
                    " too negative offset moving all GID"
                    " below defined range: 0x%04x\n",
                    offset & 0xFFFFU ));
        GXV_SET_ERR_IF_PARANOID( FT_INVALID_OFFSET );
      }
      else if ( ( offset & 0x3FFF0000UL ) == 0x00000000UL )
      {
        if ( (FT_Long)offset < gxvalid->face->num_glyphs )
          return;

        GXV_TRACE(( "ligature action table includes"
                    " too large offset moving all GID"
                    " over defined range: 0x%04x\n",
                    offset & 0xFFFFU ));
        GXV_SET_ERR_IF_PARANOID( FT_INVALID_OFFSET );
      }

      GXV_TRACE(( "ligature action table includes"
                  " invalid offset to add to 16-bit GID:"
                  " 0x%08x\n", offset ));
      GXV_SET_ERR_IF_PARANOID( FT_INVALID_OFFSET );
    }
  }
