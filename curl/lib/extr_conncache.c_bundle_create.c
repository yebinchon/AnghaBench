
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectbundle {int conn_list; int multiuse; scalar_t__ num_connections; } ;
struct Curl_easy {int dummy; } ;
typedef int curl_llist_dtor ;
typedef int CURLcode ;


 int BUNDLE_UNKNOWN ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_llist_init (int *,int ) ;
 int DEBUGASSERT (int ) ;
 scalar_t__ conn_llist_dtor ;
 struct connectbundle* malloc (int) ;

__attribute__((used)) static CURLcode bundle_create(struct Curl_easy *data,
                              struct connectbundle **cb_ptr)
{
  (void)data;
  DEBUGASSERT(*cb_ptr == ((void*)0));
  *cb_ptr = malloc(sizeof(struct connectbundle));
  if(!*cb_ptr)
    return CURLE_OUT_OF_MEMORY;

  (*cb_ptr)->num_connections = 0;
  (*cb_ptr)->multiuse = BUNDLE_UNKNOWN;

  Curl_llist_init(&(*cb_ptr)->conn_list, (curl_llist_dtor) conn_llist_dtor);
  return CURLE_OK;
}
