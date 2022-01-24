#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  GXV_Validator ;
typedef  scalar_t__ FT_UShort ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 int /*<<< orphan*/  FT_INVALID_OFFSET ; 
 scalar_t__ GXV_PROP_ATTACHING_TO_RIGHT ; 
 scalar_t__ GXV_PROP_COMPLEMENTARY_BRACKET_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ GXV_PROP_DIRECTIONALITY_CLASS ; 
 scalar_t__ GXV_PROP_FLOATER ; 
 scalar_t__ GXV_PROP_RESERVED ; 
 scalar_t__ GXV_PROP_USE_COMPLEMENTARY_BRACKET ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  version ; 

__attribute__((used)) static void
  FUNC4( FT_UShort      property,
                              FT_UShort      glyph,
                              GXV_Validator  gxvalid )
  {
    if ( glyph != 0 && ( property & GXV_PROP_FLOATER ) )
      FUNC3( glyph, gxvalid );

    if ( property & GXV_PROP_USE_COMPLEMENTARY_BRACKET )
    {
      FT_UShort  offset;
      char       complement;


      offset = (FT_UShort)( property & GXV_PROP_COMPLEMENTARY_BRACKET_OFFSET );
      if ( offset == 0 )
      {
        FUNC1(( "  found zero offset to property\n" ));
        FT_INVALID_OFFSET;
      }

      complement = (char)( offset >> 8 );
      if ( complement & 0x08 )
      {
        /* Top bit is set: negative */

        /* Calculate the absolute offset */
        complement = (char)( ( complement & 0x07 ) + 1 );

        /* The gid for complement must be greater than 0 */
        if ( glyph <= complement )
        {
          FUNC1(( "  found non-positive glyph complement\n" ));
          FT_INVALID_DATA;
        }
      }
      else
      {
        /* The gid for complement must be the face. */
        FUNC2( (FT_UShort)( glyph + complement ), gxvalid );
      }
    }
    else
    {
      if ( property & GXV_PROP_COMPLEMENTARY_BRACKET_OFFSET )
        FUNC1(( "glyph %d cannot have complementary bracketing\n",
                    glyph ));
    }

    /* this is introduced in version 2.0 */
    if ( property & GXV_PROP_ATTACHING_TO_RIGHT )
    {
      if ( FUNC0( version ) == 0x00010000UL )
      {
        FUNC1(( "  found older version (1.0) in new version table\n" ));
        FT_INVALID_DATA;
      }
    }

    if ( property & GXV_PROP_RESERVED )
    {
      FUNC1(( "  found non-zero bits in reserved bits\n" ));
      FT_INVALID_DATA;
    }

    if ( ( property & GXV_PROP_DIRECTIONALITY_CLASS ) > 11 )
    {
      /* TODO: Too restricted. Use the validation level. */
      if ( FUNC0( version ) == 0x00010000UL ||
           FUNC0( version ) == 0x00020000UL )
      {
        FUNC1(( "  found too old version in directionality class\n" ));
        FT_INVALID_DATA;
      }
    }
  }