
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GXV_kern_Dialect ;
typedef int GXV_Validator ;
typedef int FT_UShort ;


 int GXV_EXIT ;
 int GXV_NAME_ENTER (char*) ;
 int GXV_TRACE (char*) ;
 scalar_t__ KERN_ALLOWS_APPLE (int ) ;
 scalar_t__ KERN_ALLOWS_MS (int ) ;
 int KERN_DIALECT_APPLE ;
 int KERN_DIALECT_MS ;
 int KERN_DIALECT_UNKNOWN ;
 scalar_t__ KERN_IS_CLASSIC (int ) ;
 scalar_t__ KERN_IS_NEW (int ) ;
 scalar_t__ gxv_kern_coverage_classic_apple_validate (int ,int *,int ) ;
 scalar_t__ gxv_kern_coverage_classic_microsoft_validate (int ,int *,int ) ;
 scalar_t__ gxv_kern_coverage_new_apple_validate (int ,int *,int ) ;

__attribute__((used)) static GXV_kern_Dialect
  gxv_kern_coverage_validate( FT_UShort coverage,
                              FT_UShort* format,
                              GXV_Validator gxvalid )
  {
    GXV_kern_Dialect result = KERN_DIALECT_UNKNOWN;


    GXV_NAME_ENTER( "validating coverage" );

    GXV_TRACE(( "interpret coverage 0x%04x by Apple style\n", coverage ));

    if ( KERN_IS_NEW( gxvalid ) )
    {
      if ( gxv_kern_coverage_new_apple_validate( coverage,
                                                 format,
                                                 gxvalid ) )
      {
        result = KERN_DIALECT_APPLE;
        goto Exit;
      }
    }

    if ( KERN_IS_CLASSIC( gxvalid ) && KERN_ALLOWS_APPLE( gxvalid ) )
    {
      if ( gxv_kern_coverage_classic_apple_validate( coverage,
                                                     format,
                                                     gxvalid ) )
      {
        result = KERN_DIALECT_APPLE;
        goto Exit;
      }
    }

    if ( KERN_IS_CLASSIC( gxvalid ) && KERN_ALLOWS_MS( gxvalid ) )
    {
      if ( gxv_kern_coverage_classic_microsoft_validate( coverage,
                                                         format,
                                                         gxvalid ) )
      {
        result = KERN_DIALECT_MS;
        goto Exit;
      }
    }

    GXV_TRACE(( "cannot interpret coverage, broken kern subtable\n" ));

  Exit:
    GXV_EXIT;
    return result;
  }
