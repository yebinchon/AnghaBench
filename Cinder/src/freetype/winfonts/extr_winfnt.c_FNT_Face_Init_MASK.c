#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_6__* font; } ;
struct TYPE_20__ {int pixel_height; scalar_t__ avg_width; scalar_t__ max_width; int weight; int nominal_point_size; int horizontal_resolution; int vertical_resolution; scalar_t__ charset; scalar_t__ last_char; scalar_t__ first_char; scalar_t__ face_name_offset; scalar_t__ file_size; scalar_t__ external_leading; scalar_t__ italic; } ;
struct TYPE_25__ {char* family_name; int fnt_frame; TYPE_1__ header; int /*<<< orphan*/  fnt_size; scalar_t__ offset; } ;
struct TYPE_24__ {int size; int y_ppem; int x_ppem; void* height; void* width; } ;
struct TYPE_23__ {int /*<<< orphan*/  platform_id; int /*<<< orphan*/  encoding; TYPE_3__* face; int /*<<< orphan*/  encoding_id; } ;
struct TYPE_22__ {int num_faces; int face_flags; int style_flags; int num_fixed_sizes; scalar_t__ num_glyphs; char* family_name; char* style_name; TYPE_5__* available_sizes; scalar_t__ face_index; } ;
struct TYPE_21__ {int /*<<< orphan*/  size; } ;
typedef  int FT_UShort ;
typedef  int FT_ULong ;
typedef  TYPE_2__* FT_Stream ;
typedef  void* FT_Short ;
typedef  int /*<<< orphan*/  FT_Parameter ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  scalar_t__ FT_Int ;
typedef  TYPE_3__* FT_Face ;
typedef  scalar_t__ FT_Error ;
typedef  TYPE_4__ FT_CharMapRec ;
typedef  TYPE_5__ FT_Bitmap_Size ;
typedef  TYPE_6__* FNT_Font ;
typedef  TYPE_7__* FNT_Face ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FT_ENCODING_APPLE_ROMAN ; 
 int /*<<< orphan*/  FT_ENCODING_NONE ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (TYPE_7__*) ; 
 int FT_FACE_FLAG_FIXED_SIZES ; 
 int FT_FACE_FLAG_FIXED_WIDTH ; 
 int FT_FACE_FLAG_HORIZONTAL ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 void* FUNC8 (int,int,int) ; 
 scalar_t__ FUNC9 (TYPE_6__*) ; 
 scalar_t__ FUNC10 (TYPE_5__*,int) ; 
 void* FUNC11 (int) ; 
 scalar_t__ FUNC12 (char*,int,scalar_t__) ; 
 int FT_STYLE_FLAG_BOLD ; 
 int FT_STYLE_FLAG_ITALIC ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 scalar_t__ FT_WinFNT_ID_MAC ; 
 int /*<<< orphan*/  Invalid_Argument ; 
 int /*<<< orphan*/  Invalid_File_Format ; 
 int /*<<< orphan*/  TT_APPLE_ID_DEFAULT ; 
 int /*<<< orphan*/  TT_PLATFORM_APPLE_UNICODE ; 
 int /*<<< orphan*/  TT_PLATFORM_MACINTOSH ; 
 int /*<<< orphan*/  Unknown_File_Format ; 
 int /*<<< orphan*/  fnt_cmap_class ; 
 scalar_t__ FUNC16 (TYPE_7__*,scalar_t__) ; 
 scalar_t__ FUNC17 (TYPE_6__*,TYPE_2__*) ; 
 scalar_t__ FUNC18 (char*) ; 

__attribute__((used)) static FT_Error
  FUNC19( FT_Stream      stream,
                 FT_Face        fntface,        /* FNT_Face */
                 FT_Int         face_instance_index,
                 FT_Int         num_params,
                 FT_Parameter*  params )
  {
    FNT_Face   face   = (FNT_Face)fntface;
    FT_Error   error;
    FT_Memory  memory = FUNC6( face );
    FT_Int     face_index;

    FUNC15( num_params );
    FUNC15( params );


    FUNC14(( "Windows FNT driver\n" ));

    face_index = FUNC1( face_instance_index ) & 0xFFFF;

    /* try to load font from a DLL */
    error = FUNC16( face, face_instance_index );
    if ( !error && face_instance_index < 0 )
      goto Exit;

    if ( FUNC4( error, Unknown_File_Format ) )
    {
      /* this didn't work; try to load a single FNT font */
      FNT_Font  font;

      if ( FUNC9( face->font ) )
        goto Exit;

      fntface->num_faces = 1;

      font           = face->font;
      font->offset   = 0;
      font->fnt_size = stream->size;

      error = FUNC17( font, stream );

      if ( !error )
      {
        if ( face_instance_index < 0 )
          goto Exit;

        if ( face_index > 0 )
          error = FUNC13( Invalid_Argument );
      }
    }

    if ( error )
      goto Fail;

    /* sanity check */
    if ( !face->font->header.pixel_height )
    {
      FUNC14(( "invalid pixel height\n" ));
      error = FUNC13( Invalid_File_Format );
      goto Fail;
    }

    /* we now need to fill the root FT_Face fields */
    /* with relevant information                   */
    {
      FT_Face   root = FUNC5( face );
      FNT_Font  font = face->font;
      FT_ULong  family_size;


      root->face_index = face_index;

      root->face_flags |= FT_FACE_FLAG_FIXED_SIZES |
                          FT_FACE_FLAG_HORIZONTAL;

      if ( font->header.avg_width == font->header.max_width )
        root->face_flags |= FT_FACE_FLAG_FIXED_WIDTH;

      if ( font->header.italic )
        root->style_flags |= FT_STYLE_FLAG_ITALIC;

      if ( font->header.weight >= 800 )
        root->style_flags |= FT_STYLE_FLAG_BOLD;

      /* set up the `fixed_sizes' array */
      if ( FUNC10( root->available_sizes, 1 ) )
        goto Fail;

      root->num_fixed_sizes = 1;

      {
        FT_Bitmap_Size*  bsize = root->available_sizes;
        FT_UShort        x_res, y_res;


        bsize->width  = (FT_Short)font->header.avg_width;
        bsize->height = (FT_Short)( font->header.pixel_height +
                                    font->header.external_leading );
        bsize->size   = font->header.nominal_point_size << 6;

        x_res = font->header.horizontal_resolution;
        if ( !x_res )
          x_res = 72;

        y_res = font->header.vertical_resolution;
        if ( !y_res )
          y_res = 72;

        bsize->y_ppem = FUNC8( bsize->size, y_res, 72 );
        bsize->y_ppem = FUNC11( bsize->y_ppem );

        /*
         * this reads:
         *
         * the nominal height is larger than the bbox's height
         *
         * => nominal_point_size contains incorrect value;
         *    use pixel_height as the nominal height
         */
        if ( bsize->y_ppem > ( font->header.pixel_height << 6 ) )
        {
          FUNC14(( "use pixel_height as the nominal height\n" ));

          bsize->y_ppem = font->header.pixel_height << 6;
          bsize->size   = FUNC8( bsize->y_ppem, 72, y_res );
        }

        bsize->x_ppem = FUNC8( bsize->size, x_res, 72 );
        bsize->x_ppem = FUNC11( bsize->x_ppem );
      }

      {
        FT_CharMapRec  charmap;


        charmap.encoding    = FT_ENCODING_NONE;
        /* initial platform/encoding should indicate unset status? */
        charmap.platform_id = TT_PLATFORM_APPLE_UNICODE;
        charmap.encoding_id = TT_APPLE_ID_DEFAULT;
        charmap.face        = root;

        if ( font->header.charset == FT_WinFNT_ID_MAC )
        {
          charmap.encoding    = FT_ENCODING_APPLE_ROMAN;
          charmap.platform_id = TT_PLATFORM_MACINTOSH;
/*        charmap.encoding_id = TT_MAC_ID_ROMAN; */
        }

        error = FUNC3( fnt_cmap_class,
                             NULL,
                             &charmap,
                             NULL );
        if ( error )
          goto Fail;
      }

      /* set up remaining flags */

      if ( font->header.last_char < font->header.first_char )
      {
        FUNC14(( "invalid number of glyphs\n" ));
        error = FUNC13( Invalid_File_Format );
        goto Fail;
      }

      /* reserve one slot for the .notdef glyph at index 0 */
      root->num_glyphs = font->header.last_char -
                         font->header.first_char + 1 + 1;

      if ( font->header.face_name_offset >= font->header.file_size )
      {
        FUNC14(( "invalid family name offset\n" ));
        error = FUNC13( Invalid_File_Format );
        goto Fail;
      }
      family_size = font->header.file_size - font->header.face_name_offset;
      /* Some broken fonts don't delimit the face name with a final */
      /* NULL byte -- the frame is erroneously one byte too small.  */
      /* We thus allocate one more byte, setting it explicitly to   */
      /* zero.                                                      */
      if ( FUNC2( font->family_name, family_size + 1 ) )
        goto Fail;

      FUNC7( font->family_name,
                   font->fnt_frame + font->header.face_name_offset,
                   family_size );

      font->family_name[family_size] = '\0';

      if ( FUNC12( font->family_name,
                       family_size,
                       FUNC18( font->family_name ) + 1 ) )
        goto Fail;

      root->family_name = font->family_name;
      root->style_name  = (char *)"Regular";

      if ( root->style_flags & FT_STYLE_FLAG_BOLD )
      {
        if ( root->style_flags & FT_STYLE_FLAG_ITALIC )
          root->style_name = (char *)"Bold Italic";
        else
          root->style_name = (char *)"Bold";
      }
      else if ( root->style_flags & FT_STYLE_FLAG_ITALIC )
        root->style_name = (char *)"Italic";
    }
    goto Exit;

  Fail:
    FUNC0( fntface );

  Exit:
    return error;
  }