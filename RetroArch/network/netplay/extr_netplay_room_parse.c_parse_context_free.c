
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parser; int * cur_field; } ;
typedef TYPE_1__ Context ;


 int JSON_Parser_Free (int ) ;
 int free (int *) ;

__attribute__((used)) static void parse_context_free(Context* pCtx)
{
   if (pCtx->cur_field)
      free(pCtx->cur_field);

   pCtx->cur_field = ((void*)0);

   JSON_Parser_Free(pCtx->parser);
}
