
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connectbundle {int conn_list; } ;


 int Curl_llist_destroy (int *,int *) ;
 int free (struct connectbundle*) ;

__attribute__((used)) static void bundle_destroy(struct connectbundle *cb_ptr)
{
  if(!cb_ptr)
    return;

  Curl_llist_destroy(&cb_ptr->conn_list, ((void*)0));

  free(cb_ptr);
}
