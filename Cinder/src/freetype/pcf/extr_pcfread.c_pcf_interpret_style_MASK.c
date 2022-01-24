#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* style_name; int /*<<< orphan*/  style_flags; int /*<<< orphan*/  memory; } ;
struct TYPE_6__ {char* atom; } ;
struct TYPE_7__ {TYPE_1__ value; scalar_t__ isString; } ;
typedef  TYPE_2__* PCF_Property ;
typedef  int /*<<< orphan*/  PCF_Face ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  TYPE_3__* FT_Face ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,size_t) ; 
 int /*<<< orphan*/  FT_Err_Ok ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FT_STYLE_FLAG_BOLD ; 
 int /*<<< orphan*/  FT_STYLE_FLAG_ITALIC ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 size_t FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static FT_Error
  FUNC5( PCF_Face  pcf )
  {
    FT_Error   error  = FT_Err_Ok;
    FT_Face    face   = FUNC1( pcf );
    FT_Memory  memory = face->memory;

    PCF_Property  prop;

    size_t  nn, len;
    char*   strings[4] = { NULL, NULL, NULL, NULL };
    size_t  lengths[4];


    face->style_flags = 0;

    prop = FUNC4( pcf, "SLANT" );
    if ( prop && prop->isString                                       &&
         ( *(prop->value.atom) == 'O' || *(prop->value.atom) == 'o' ||
           *(prop->value.atom) == 'I' || *(prop->value.atom) == 'i' ) )
    {
      face->style_flags |= FT_STYLE_FLAG_ITALIC;
      strings[2] = ( *(prop->value.atom) == 'O' ||
                     *(prop->value.atom) == 'o' ) ? (char *)"Oblique"
                                                  : (char *)"Italic";
    }

    prop = FUNC4( pcf, "WEIGHT_NAME" );
    if ( prop && prop->isString                                       &&
         ( *(prop->value.atom) == 'B' || *(prop->value.atom) == 'b' ) )
    {
      face->style_flags |= FT_STYLE_FLAG_BOLD;
      strings[1] = (char*)"Bold";
    }

    prop = FUNC4( pcf, "SETWIDTH_NAME" );
    if ( prop && prop->isString                                        &&
         *(prop->value.atom)                                           &&
         !( *(prop->value.atom) == 'N' || *(prop->value.atom) == 'n' ) )
      strings[3] = (char*)( prop->value.atom );

    prop = FUNC4( pcf, "ADD_STYLE_NAME" );
    if ( prop && prop->isString                                        &&
         *(prop->value.atom)                                           &&
         !( *(prop->value.atom) == 'N' || *(prop->value.atom) == 'n' ) )
      strings[0] = (char*)( prop->value.atom );

    for ( len = 0, nn = 0; nn < 4; nn++ )
    {
      lengths[nn] = 0;
      if ( strings[nn] )
      {
        lengths[nn] = FUNC3( strings[nn] );
        len        += lengths[nn] + 1;
      }
    }

    if ( len == 0 )
    {
      strings[0] = (char*)"Regular";
      lengths[0] = FUNC3( strings[0] );
      len        = lengths[0] + 1;
    }

    {
      char*  s;


      if ( FUNC0( face->style_name, len ) )
        return error;

      s = face->style_name;

      for ( nn = 0; nn < 4; nn++ )
      {
        char*  src = strings[nn];


        len = lengths[nn];

        if ( !src )
          continue;

        /* separate elements with a space */
        if ( s != face->style_name )
          *s++ = ' ';

        FUNC2( s, src, len );

        /* need to convert spaces to dashes for */
        /* add_style_name and setwidth_name     */
        if ( nn == 0 || nn == 3 )
        {
          size_t  mm;


          for ( mm = 0; mm < len; mm++ )
            if ( s[mm] == ' ' )
              s[mm] = '-';
        }

        s += len;
      }
      *s = 0;
    }

    return error;
  }