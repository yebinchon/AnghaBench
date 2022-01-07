
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int* json; int env; } ;
typedef TYPE_1__ state_t ;


 int JSONSAX_INVALID_VALUE ;
 int jsonx_parse_array (TYPE_1__*) ;
 int jsonx_parse_boolean (TYPE_1__*) ;
 int jsonx_parse_null (TYPE_1__*) ;
 int jsonx_parse_number (TYPE_1__*) ;
 int jsonx_parse_object (TYPE_1__*) ;
 int jsonx_parse_string (TYPE_1__*) ;
 int longjmp (int ,int ) ;
 int skip_spaces (TYPE_1__*) ;

__attribute__((used)) static void jsonx_parse_value(state_t* state)
{
   skip_spaces( state );

   switch ( *state->json )
   {
      case '{':
         jsonx_parse_object(state);
         break;
      case '[':
         jsonx_parse_array( state );
         break;
      case '"':
         jsonx_parse_string( state );
         break;
      case 't':
      case 'f':
         jsonx_parse_boolean( state );
         break;
      case 'n':
         jsonx_parse_null( state );
         break;
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case '-':
         jsonx_parse_number( state );
         break;

      default:
         longjmp( state->env, JSONSAX_INVALID_VALUE );
   }
}
