
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int method; int uri; } ;
typedef TYPE_1__ httpd_uri_t ;
typedef int httpd_handle_t ;


 scalar_t__ ESP_OK ;
 int HTTPD_TEST_MAX_URI_HANDLERS ;
 int TEST_ASSERT (int) ;
 int basic_sanity ;
 TYPE_1__ handler_limit_uri (char*) ;
 scalar_t__ httpd_register_uri_handler (int ,TYPE_1__*) ;
 scalar_t__ httpd_unregister_uri_handler (int ,int ,int ) ;
 int num_digits (int) ;
 int sprintf (char*,char*,int) ;

void test_handler_limit(httpd_handle_t hd)
{
    int i;
    char x[HTTPD_TEST_MAX_URI_HANDLERS+1][num_digits(HTTPD_TEST_MAX_URI_HANDLERS)+1];
    httpd_uri_t uris[HTTPD_TEST_MAX_URI_HANDLERS+1];

    for (i = 0; i < HTTPD_TEST_MAX_URI_HANDLERS + 1; i++) {
        sprintf(x[i],"%d",i);
        uris[i] = handler_limit_uri(x[i]);
    }


    for (i = 0; i < HTTPD_TEST_MAX_URI_HANDLERS; i++) {
        TEST_ASSERT(httpd_register_uri_handler(hd, &uris[i]) == ESP_OK);
    }


    TEST_ASSERT(httpd_register_uri_handler(hd, &uris[HTTPD_TEST_MAX_URI_HANDLERS]) != ESP_OK);


    TEST_ASSERT(httpd_unregister_uri_handler(hd, uris[0].uri, uris[0].method) == ESP_OK);


    TEST_ASSERT(httpd_unregister_uri_handler(hd, uris[0].uri, uris[0].method) != ESP_OK);


    TEST_ASSERT(httpd_register_uri_handler(hd, &uris[0]) == ESP_OK);


    TEST_ASSERT(httpd_register_uri_handler(hd, &uris[0]) != ESP_OK);


    TEST_ASSERT(httpd_register_uri_handler(hd, &uris[HTTPD_TEST_MAX_URI_HANDLERS]) != ESP_OK);


    for (i = 0; i < HTTPD_TEST_MAX_URI_HANDLERS; i++) {
        TEST_ASSERT(httpd_unregister_uri_handler(hd, uris[i].uri, uris[i].method) == ESP_OK);
    }
    basic_sanity = 0;
}
