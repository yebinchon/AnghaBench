
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int memory; } ;
struct TYPE_7__ {TYPE_1__ root; } ;
struct TYPE_8__ {int subrs_hash; int subrs; int swap_table; int glyph_names; int charstrings; int encoding_table; TYPE_2__ parser; } ;
typedef TYPE_2__* T1_Parser ;
typedef TYPE_3__* T1_Loader ;
typedef int FT_Memory ;


 int FT_FREE (int ) ;
 int T1_Finalize_Parser (TYPE_2__*) ;
 int T1_Release_Table (int *) ;
 int ft_hash_num_free (int ,int ) ;

__attribute__((used)) static void
  t1_done_loader( T1_Loader loader )
  {
    T1_Parser parser = &loader->parser;
    FT_Memory memory = parser->root.memory;



    T1_Release_Table( &loader->encoding_table );
    T1_Release_Table( &loader->charstrings );
    T1_Release_Table( &loader->glyph_names );
    T1_Release_Table( &loader->swap_table );
    T1_Release_Table( &loader->subrs );


    ft_hash_num_free( loader->subrs_hash, memory );
    FT_FREE( loader->subrs_hash );


    T1_Finalize_Parser( parser );
  }
