
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ flags; scalar_t__ len; scalar_t__ pos; } ;
struct TYPE_6__ {scalar_t__ num_hints; scalar_t__ max_hints; scalar_t__ hints; } ;
typedef TYPE_1__* PS_Hint_Table ;
typedef TYPE_2__* PS_Hint ;
typedef scalar_t__ FT_UInt ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Error ;


 scalar_t__ FT_Err_Ok ;
 scalar_t__ ps_hint_table_ensure (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static FT_Error
  ps_hint_table_alloc( PS_Hint_Table table,
                       FT_Memory memory,
                       PS_Hint *ahint )
  {
    FT_Error error = FT_Err_Ok;
    FT_UInt count;
    PS_Hint hint = ((void*)0);


    count = table->num_hints;
    count++;

    if ( count >= table->max_hints )
    {
      error = ps_hint_table_ensure( table, count, memory );
      if ( error )
        goto Exit;
    }

    hint = table->hints + count - 1;
    hint->pos = 0;
    hint->len = 0;
    hint->flags = 0;

    table->num_hints = count;

  Exit:
    *ahint = hint;
    return error;
  }
