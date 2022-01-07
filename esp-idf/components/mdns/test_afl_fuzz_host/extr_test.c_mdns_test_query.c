
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mdns_result_t ;
typedef int mdns_action_t ;


 int ACTION_SEARCH_ADD ;
 int GetLastItem (int **) ;
 int MDNS_TYPE_PTR ;
 int abort () ;
 int mdns_test_execute_action (int *) ;
 int mdns_test_search_free (int ) ;
 int mdns_test_search_init (int *,char const*,char const*,int ,int,int) ;
 scalar_t__ mdns_test_send_search_action (int ,int ) ;
 int search ;

__attribute__((used)) static mdns_result_t* mdns_test_query(const char * service_name, const char * proto)
{
    search = mdns_test_search_init(((void*)0), service_name, proto, MDNS_TYPE_PTR, 3000, 20);
    if (!search) {
        abort();
    }

    if (mdns_test_send_search_action(ACTION_SEARCH_ADD, search)) {
        mdns_test_search_free(search);
        abort();
    }

    mdns_action_t * a = ((void*)0);
    GetLastItem(&a);
    mdns_test_execute_action(a);
    return ((void*)0);
}
