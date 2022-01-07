
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* multipart_boundary; int keep_alive; int * on_query_string; int * on_path; int * on_fragment; int * on_uri; int * on_header_value; int * on_header_field; int * on_part_data; int * on_part_data_complete; int * on_multipart_header_value; int * on_multipart_header_field; int * on_multipart_headers_complete; int * on_body; int * on_headers_complete; int * on_complete; scalar_t__ multipart_boundary_len; scalar_t__ number_of_multipart_headers; int transfer_encoding; scalar_t__ number_of_headers; scalar_t__ version_minor; scalar_t__ version_major; scalar_t__ content_length; scalar_t__ body_read; scalar_t__ eating_body; int expect_continue; } ;
typedef TYPE_1__ ebb_request ;


 int EBB_IDENTITY ;
 int FALSE ;

void ebb_request_init(ebb_request *request)
{
  request->expect_continue = FALSE;
  request->eating_body = 0;
  request->body_read = 0;
  request->content_length = 0;
  request->version_major = 0;
  request->version_minor = 0;
  request->number_of_headers = 0;
  request->transfer_encoding = EBB_IDENTITY;
  request->number_of_multipart_headers = 0;
  request->multipart_boundary_len = 0;
  request->multipart_boundary[0] = request->multipart_boundary[1] = '-';
  request->keep_alive = -1;

  request->on_complete = ((void*)0);
  request->on_headers_complete = ((void*)0);
  request->on_body = ((void*)0);
  request->on_multipart_headers_complete = ((void*)0);
  request->on_multipart_header_field = ((void*)0);
  request->on_multipart_header_value = ((void*)0);
  request->on_part_data_complete = ((void*)0);
  request->on_part_data = ((void*)0);
  request->on_header_field = ((void*)0);
  request->on_header_value = ((void*)0);
  request->on_uri = ((void*)0);
  request->on_fragment = ((void*)0);
  request->on_path = ((void*)0);
  request->on_query_string = ((void*)0);
}
