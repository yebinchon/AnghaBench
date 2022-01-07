
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dispatcher; int uri; scalar_t__ cursor; TYPE_4__* connection; } ;
typedef TYPE_1__ ebb_request_extras ;
struct TYPE_9__ {int on_complete; int on_headers_complete; int on_query_string; int on_body; int on_multipart_header_value; int on_multipart_header_field; int on_part_data; int on_path; TYPE_1__* data; } ;
typedef TYPE_2__ ebb_request ;
struct TYPE_10__ {TYPE_2__* request; } ;
typedef TYPE_3__ ebb_connection_extras ;
struct TYPE_11__ {scalar_t__ data; } ;
typedef TYPE_4__ ebb_connection ;


 int ebb_request_init (TYPE_2__*) ;
 scalar_t__ malloc (int) ;
 int memset (int ,int ,int) ;
 int on_request_body ;
 int on_request_dispatch ;
 int on_request_headers_complete ;
 int on_request_multipart_header_field ;
 int on_request_multipart_header_value ;
 int on_request_part_data ;
 int on_request_path ;
 int on_request_query_string ;

__attribute__((used)) static ebb_request* new_request(ebb_connection* connection)
{
 ebb_request* request = (ebb_request*)malloc(sizeof(ebb_request) + sizeof(ebb_request_extras));
 ebb_request_init(request);
 ebb_connection_extras* connection_extras = (ebb_connection_extras*)(connection->data);
 connection_extras->request = request;
 ebb_request_extras* request_extras = (ebb_request_extras*)(request + 1);
 request_extras->connection = connection;
 request_extras->cursor = 0;
 memset(request_extras->uri, 0, sizeof(request_extras->uri));
 request_extras->dispatcher = 0;
 request->data = request_extras;
 request->on_path = on_request_path;
 request->on_part_data = on_request_part_data;
 request->on_multipart_header_field = on_request_multipart_header_field;
 request->on_multipart_header_value = on_request_multipart_header_value;
 request->on_body = on_request_body;
 request->on_query_string = on_request_query_string;
 request->on_headers_complete = on_request_headers_complete;
 request->on_complete = on_request_dispatch;
 return request;
}
