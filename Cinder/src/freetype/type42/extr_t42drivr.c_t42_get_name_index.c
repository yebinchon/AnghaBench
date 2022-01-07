
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t num_glyphs; scalar_t__* charstrings; scalar_t__** glyph_names; } ;
struct TYPE_5__ {TYPE_1__ type1; } ;
typedef TYPE_2__* T42_Face ;
typedef int FT_UInt ;
typedef scalar_t__ FT_String ;
typedef size_t FT_Int ;


 int ft_strcmp (scalar_t__*,scalar_t__*) ;
 int ft_strtol (char const*,int *,int) ;

__attribute__((used)) static FT_UInt
  t42_get_name_index( T42_Face face,
                      FT_String* glyph_name )
  {
    FT_Int i;


    for ( i = 0; i < face->type1.num_glyphs; i++ )
    {
      FT_String* gname = face->type1.glyph_names[i];


      if ( glyph_name[0] == gname[0] && !ft_strcmp( glyph_name, gname ) )
        return (FT_UInt)ft_strtol( (const char *)face->type1.charstrings[i],
                                   ((void*)0), 10 );
    }

    return 0;
  }
