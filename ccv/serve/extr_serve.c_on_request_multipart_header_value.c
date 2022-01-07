
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int resource; int context; TYPE_1__* dispatcher; } ;
typedef TYPE_2__ ebb_request_extras ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef TYPE_3__ ebb_request ;
struct TYPE_5__ {int context; int (* parse ) (int ,int ,int ,char const*,size_t,int ,int) ;} ;


 int URI_MULTIPART_HEADER_VALUE ;
 int stub1 (int ,int ,int ,char const*,size_t,int ,int) ;

__attribute__((used)) static void on_request_multipart_header_value(ebb_request* request, const char* at, size_t length, int header_index)
{
 ebb_request_extras* request_extras = (ebb_request_extras*)request->data;
 if (request_extras->dispatcher && request_extras->dispatcher->parse)
  request_extras->context = request_extras->dispatcher->parse(request_extras->dispatcher->context, request_extras->context, request_extras->resource, at, length, URI_MULTIPART_HEADER_VALUE, header_index);
}
