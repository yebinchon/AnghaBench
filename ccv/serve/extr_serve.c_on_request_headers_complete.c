
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cursor; char* uri; int resource; scalar_t__ context; TYPE_4__* dispatcher; } ;
typedef TYPE_1__ ebb_request_extras ;
struct TYPE_6__ {scalar_t__ data; } ;
typedef TYPE_2__ ebb_request ;
struct TYPE_7__ {int context; scalar_t__ (* parse ) (int ,scalar_t__,int,char*,size_t,int ,int ) ;} ;


 int URI_PARSE_TERMINATE ;
 TYPE_4__* find_uri_dispatch (char*) ;
 size_t strnlen (char*,int) ;
 scalar_t__ stub1 (int ,scalar_t__,int,char*,size_t,int ,int ) ;

__attribute__((used)) static void on_request_headers_complete(ebb_request* request)
{

 ebb_request_extras* request_extras = (ebb_request_extras*)request->data;
 if (request_extras->cursor > 0)
 {
  char* uri = request_extras->uri;
  size_t len = strnlen(request_extras->uri, 256);
  int i;
  int resource = 0, multiple = 1;
  for (i = len - 1; i >= 0; i--)
   if (uri[i] >= '0' && uri[i] <= '9')
   {
    resource += (uri[i] - '0') * multiple;
    multiple *= 10;
   } else if (i == len - 1 || uri[i] != '/') {

    i = len;
    resource = -1;
    break;
   } else
    break;
  uri[i] = '\0';
  request_extras->dispatcher = find_uri_dispatch(uri);
  request_extras->resource = resource;
  request_extras->context = 0;
  if (resource >= 0 && request_extras->dispatcher && request_extras->dispatcher->parse)
   request_extras->context = request_extras->dispatcher->parse(request_extras->dispatcher->context, request_extras->context, request_extras->resource, uri, len, URI_PARSE_TERMINATE, 0);
  request_extras->cursor = 0;
 }
}
