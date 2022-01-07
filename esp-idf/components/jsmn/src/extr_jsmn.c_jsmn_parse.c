
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef void* jsmntype_t ;
struct TYPE_12__ {size_t parent; void* type; size_t start; int end; int size; } ;
typedef TYPE_1__ jsmntok_t ;
struct TYPE_13__ {int toknext; size_t pos; int toksuper; } ;
typedef TYPE_2__ jsmn_parser ;


 void* JSMN_ARRAY ;
 int JSMN_ERROR_INVAL ;
 int JSMN_ERROR_NOMEM ;
 int JSMN_ERROR_PART ;
 void* JSMN_OBJECT ;
 void* JSMN_STRING ;
 TYPE_1__* jsmn_alloc_token (TYPE_2__*,TYPE_1__*,unsigned int) ;
 int jsmn_parse_primitive (TYPE_2__*,char const*,size_t,TYPE_1__*,unsigned int) ;
 int jsmn_parse_string (TYPE_2__*,char const*,size_t,TYPE_1__*,unsigned int) ;

int jsmn_parse(jsmn_parser *parser, const char *js, size_t len,
  jsmntok_t *tokens, unsigned int num_tokens) {
 int r;
 int i;
 jsmntok_t *token;
 int count = parser->toknext;

 for (; parser->pos < len && js[parser->pos] != '\0'; parser->pos++) {
  char c;
  jsmntype_t type;

  c = js[parser->pos];
  switch (c) {
   case '{': case '[':
    count++;
    if (tokens == ((void*)0)) {
     break;
    }
    token = jsmn_alloc_token(parser, tokens, num_tokens);
    if (token == ((void*)0))
     return JSMN_ERROR_NOMEM;
    if (parser->toksuper != -1) {
     tokens[parser->toksuper].size++;



    }
    token->type = (c == '{' ? JSMN_OBJECT : JSMN_ARRAY);
    token->start = parser->pos;
    parser->toksuper = parser->toknext - 1;
    break;
   case '}': case ']':
    if (tokens == ((void*)0))
     break;
    type = (c == '}' ? JSMN_OBJECT : JSMN_ARRAY);
    for (i = parser->toknext - 1; i >= 0; i--) {
     token = &tokens[i];
     if (token->start != -1 && token->end == -1) {
      if (token->type != type) {
       return JSMN_ERROR_INVAL;
      }
      parser->toksuper = -1;
      token->end = parser->pos + 1;
      break;
     }
    }

    if (i == -1) return JSMN_ERROR_INVAL;
    for (; i >= 0; i--) {
     token = &tokens[i];
     if (token->start != -1 && token->end == -1) {
      parser->toksuper = i;
      break;
     }
    }

    break;
   case '\"':
    r = jsmn_parse_string(parser, js, len, tokens, num_tokens);
    if (r < 0) return r;
    count++;
    if (parser->toksuper != -1 && tokens != ((void*)0))
     tokens[parser->toksuper].size++;
    break;
   case '\t' : case '\r' : case '\n' : case ' ':
    break;
   case ':':
    parser->toksuper = parser->toknext - 1;
    break;
   case ',':
    if (tokens != ((void*)0) && parser->toksuper != -1 &&
      tokens[parser->toksuper].type != JSMN_ARRAY &&
      tokens[parser->toksuper].type != JSMN_OBJECT) {



     for (i = parser->toknext - 1; i >= 0; i--) {
      if (tokens[i].type == JSMN_ARRAY || tokens[i].type == JSMN_OBJECT) {
       if (tokens[i].start != -1 && tokens[i].end == -1) {
        parser->toksuper = i;
        break;
       }
      }
     }

    }
    break;
   default:

    r = jsmn_parse_primitive(parser, js, len, tokens, num_tokens);
    if (r < 0) return r;
    count++;
    if (parser->toksuper != -1 && tokens != ((void*)0))
     tokens[parser->toksuper].size++;
    break;






  }
 }

 if (tokens != ((void*)0)) {
  for (i = parser->toknext - 1; i >= 0; i--) {

   if (tokens[i].start != -1 && tokens[i].end == -1) {
    return JSMN_ERROR_PART;
   }
  }
 }

 return count;
}
