
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* json; int env; void* ud; TYPE_2__ const* handlers; } ;
typedef TYPE_1__ state_t ;
struct TYPE_6__ {int (* end_document ) (void*) ;int (* start_document ) (void*) ;} ;
typedef TYPE_2__ jsonsax_handlers_t ;


 int JSONSAX_OK ;
 int jsonx_parse_value (TYPE_1__*) ;
 int setjmp (int ) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

int jsonsax_parse( const char* json, const jsonsax_handlers_t* handlers, void* userdata )
{
  state_t state;
  int res;

  state.json = json;
  state.handlers = handlers;
  state.ud = userdata;

  if ( ( res = setjmp( state.env ) ) == 0 )
  {
    if ( handlers->start_document )
      handlers->start_document( userdata );

    jsonx_parse_value(&state);

    if ( handlers->end_document )
      handlers->end_document( userdata );

    res = JSONSAX_OK;
  }

  return res;
}
