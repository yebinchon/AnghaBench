
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ u; } ;
struct TYPE_8__ {int u; } ;
struct TYPE_7__ {int lookuptbl_head; } ;
typedef TYPE_1__* GXV_Validator ;
typedef TYPE_2__ GXV_LookupValueDesc ;
typedef TYPE_3__* GXV_LookupValueCPtr ;
typedef int FT_UShort ;
typedef int FT_Bytes ;


 int FT_NEXT_USHORT (int) ;
 int GXV_LIMIT_CHECK (int) ;

__attribute__((used)) static GXV_LookupValueDesc
  gxv_prop_LookupFmt4_transit( FT_UShort relative_gindex,
                               GXV_LookupValueCPtr base_value_p,
                               FT_Bytes lookuptbl_limit,
                               GXV_Validator gxvalid )
  {
    FT_Bytes p;
    FT_Bytes limit;
    FT_UShort offset;
    GXV_LookupValueDesc value;


    offset = (FT_UShort)( base_value_p->u +
                          relative_gindex * sizeof ( FT_UShort ) );
    p = gxvalid->lookuptbl_head + offset;
    limit = lookuptbl_limit;

    GXV_LIMIT_CHECK ( 2 );
    value.u = FT_NEXT_USHORT( p );

    return value;
  }
