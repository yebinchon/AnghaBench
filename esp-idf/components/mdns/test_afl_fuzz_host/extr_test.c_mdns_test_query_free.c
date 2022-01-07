
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mdns_test_search_free (int ) ;
 int search ;

__attribute__((used)) static void mdns_test_query_free(void)
{
    mdns_test_search_free(search);
}
