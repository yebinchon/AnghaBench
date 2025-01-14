
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t cursor; scalar_t__ uri; } ;
typedef TYPE_1__ ebb_request_extras ;
struct TYPE_5__ {scalar_t__ data; } ;
typedef TYPE_2__ ebb_request ;


 int memcpy (scalar_t__,char const*,size_t) ;

__attribute__((used)) static void on_request_path(ebb_request* request, const char* at, size_t length)
{
 ebb_request_extras* request_extras = (ebb_request_extras*)request->data;
 if (length + request_extras->cursor < 256)
  memcpy(request_extras->uri + request_extras->cursor, at, length);
 request_extras->cursor += length;
}
