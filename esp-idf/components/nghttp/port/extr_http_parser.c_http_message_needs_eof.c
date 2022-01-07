
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int status_code; int flags; scalar_t__ content_length; } ;
typedef TYPE_1__ http_parser ;


 int F_CHUNKED ;
 int F_SKIPBODY ;
 scalar_t__ HTTP_REQUEST ;
 scalar_t__ ULLONG_MAX ;

int
http_message_needs_eof (const http_parser *parser)
{
  if (parser->type == HTTP_REQUEST) {
    return 0;
  }


  if (parser->status_code / 100 == 1 ||
      parser->status_code == 204 ||
      parser->status_code == 304 ||
      parser->flags & F_SKIPBODY) {
    return 0;
  }

  if ((parser->flags & F_CHUNKED) || parser->content_length != ULLONG_MAX) {
    return 0;
  }

  return 1;
}
