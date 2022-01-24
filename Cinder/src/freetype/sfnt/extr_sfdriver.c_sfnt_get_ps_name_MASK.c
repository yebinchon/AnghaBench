#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int names; int /*<<< orphan*/  stream; } ;
struct TYPE_8__ {int /*<<< orphan*/  memory; } ;
struct TYPE_10__ {char const* postscript_name; TYPE_2__ name_table; TYPE_1__ root; scalar_t__ blend; } ;
typedef  TYPE_3__* TT_Face ;
typedef  int FT_Int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TT_NAME_ID_PS_NAME ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int*,int*) ; 
 char const* FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  sfnt_is_postscript ; 

__attribute__((used)) static const char*
  FUNC7( TT_Face  face )
  {
    FT_Int       found, win, apple;
    const char*  result = NULL;


    if ( face->postscript_name )
      return face->postscript_name;

#ifdef TT_CONFIG_OPTION_GX_VAR_SUPPORT
    if ( face->blend                                 &&
         ( FT_IS_NAMED_INSTANCE( FT_FACE( face ) ) ||
           FT_IS_VARIATION( FT_FACE( face ) )      ) )
    {
      face->postscript_name = sfnt_get_var_ps_name( face );
      return face->postscript_name;
    }
#endif

    /* scan the name table to see whether we have a Postscript name here, */
    /* either in Macintosh or Windows platform encodings                  */
    found = FUNC5( face, TT_NAME_ID_PS_NAME, &win, &apple );
    if ( !found )
      return NULL;

    /* prefer Windows entries over Apple */
    if ( win != -1 )
      result = FUNC4( face->root.memory,
                               face->name_table.stream,
                               face->name_table.names + win,
                               sfnt_is_postscript,
                               1 );
    else
      result = FUNC3( face->root.memory,
                                 face->name_table.stream,
                                 face->name_table.names + apple,
                                 sfnt_is_postscript,
                                 1 );

    face->postscript_name = result;

    return result;
  }