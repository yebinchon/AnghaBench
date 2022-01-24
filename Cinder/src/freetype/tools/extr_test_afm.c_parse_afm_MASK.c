#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  get_index; int /*<<< orphan*/  FontInfo; } ;
struct TYPE_16__ {int /*<<< orphan*/  memory; } ;
struct TYPE_15__ {int /*<<< orphan*/  limit; int /*<<< orphan*/  cursor; int /*<<< orphan*/  size; } ;
struct TYPE_14__ {TYPE_1__* afm_parser_funcs; } ;
struct TYPE_13__ {int (* init ) (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int (* parse ) (TYPE_5__*) ;int /*<<< orphan*/  (* done ) (TYPE_5__*) ;} ;
typedef  TYPE_2__* PSAux_Service ;
typedef  TYPE_3__* FT_Stream ;
typedef  TYPE_4__* FT_Library ;
typedef  int FT_Error ;
typedef  TYPE_5__ AFM_ParserRec ;
typedef  int /*<<< orphan*/  AFM_FontInfo ;

/* Variables and functions */
 int FT_Err_Ok ; 
 scalar_t__ FUNC0 (TYPE_4__*,char*) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dummy_get_index ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 

FT_Error
  FUNC5( FT_Library    library,
             FT_Stream     stream,
             AFM_FontInfo  fi )
  {
    PSAux_Service  psaux;
    AFM_ParserRec  parser;
    FT_Error       error = FT_Err_Ok;


    psaux = (PSAux_Service)FUNC0( library, "psaux" );
    if ( !psaux || !psaux->afm_parser_funcs )
      return -1;

    error = FUNC1( stream, stream->size );
    if ( error )
      return error;

    error = psaux->afm_parser_funcs->init( &parser,
                                           library->memory,
                                           stream->cursor,
                                           stream->limit );
    if ( error )
      return error;

    parser.FontInfo = fi;
    parser.get_index = dummy_get_index;

    error = psaux->afm_parser_funcs->parse( &parser );

    psaux->afm_parser_funcs->done( &parser );

    return error;
  }