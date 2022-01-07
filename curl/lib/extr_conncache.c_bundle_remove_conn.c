
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct curl_llist_element {struct curl_llist_element* next; struct connectdata* ptr; } ;
struct connectdata {int * bundle; } ;
struct TYPE_2__ {struct curl_llist_element* head; } ;
struct connectbundle {int num_connections; TYPE_1__ conn_list; } ;


 int Curl_llist_remove (TYPE_1__*,struct curl_llist_element*,int *) ;

__attribute__((used)) static int bundle_remove_conn(struct connectbundle *cb_ptr,
                              struct connectdata *conn)
{
  struct curl_llist_element *curr;

  curr = cb_ptr->conn_list.head;
  while(curr) {
    if(curr->ptr == conn) {
      Curl_llist_remove(&cb_ptr->conn_list, curr, ((void*)0));
      cb_ptr->num_connections--;
      conn->bundle = ((void*)0);
      return 1;
    }
    curr = curr->next;
  }
  return 0;
}
