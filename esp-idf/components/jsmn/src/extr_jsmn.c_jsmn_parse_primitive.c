
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int parent; } ;
typedef TYPE_1__ jsmntok_t ;
struct TYPE_10__ {int pos; int toksuper; } ;
typedef TYPE_2__ jsmn_parser ;


 int JSMN_ERROR_INVAL ;
 int JSMN_ERROR_NOMEM ;
 int JSMN_ERROR_PART ;
 int JSMN_PRIMITIVE ;
 TYPE_1__* jsmn_alloc_token (TYPE_2__*,TYPE_1__*,size_t) ;
 int jsmn_fill_token (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static int jsmn_parse_primitive(jsmn_parser *parser, const char *js,
  size_t len, jsmntok_t *tokens, size_t num_tokens) {
 jsmntok_t *token;
 int start;

 start = parser->pos;

 for (; parser->pos < len && js[parser->pos] != '\0'; parser->pos++) {
  switch (js[parser->pos]) {


   case ':':

   case '\t' : case '\r' : case '\n' : case ' ' :
   case ',' : case ']' : case '}' :
    goto found;
  }
  if (js[parser->pos] < 32 || js[parser->pos] >= 127) {
   parser->pos = start;
   return JSMN_ERROR_INVAL;
  }
 }






found:
 if (tokens == ((void*)0)) {
  parser->pos--;
  return 0;
 }
 token = jsmn_alloc_token(parser, tokens, num_tokens);
 if (token == ((void*)0)) {
  parser->pos = start;
  return JSMN_ERROR_NOMEM;
 }
 jsmn_fill_token(token, JSMN_PRIMITIVE, start, parser->pos);



 parser->pos--;
 return 0;
}
