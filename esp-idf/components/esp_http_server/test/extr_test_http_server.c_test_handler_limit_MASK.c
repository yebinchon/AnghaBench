#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  method; int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ httpd_uri_t ;
typedef  int /*<<< orphan*/  httpd_handle_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int HTTPD_TEST_MAX_URI_HANDLERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int basic_sanity ; 
 TYPE_1__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void FUNC6(httpd_handle_t hd)
{
    int i;
    char x[HTTPD_TEST_MAX_URI_HANDLERS+1][FUNC4(HTTPD_TEST_MAX_URI_HANDLERS)+1];
    httpd_uri_t uris[HTTPD_TEST_MAX_URI_HANDLERS+1];

    for (i = 0; i < HTTPD_TEST_MAX_URI_HANDLERS + 1; i++) {
        FUNC5(x[i],"%d",i);
        uris[i] = FUNC1(x[i]);
    }

    /* Register multiple instances of the same handler for MAX URI Handlers */
    for (i = 0; i < HTTPD_TEST_MAX_URI_HANDLERS; i++) {
        FUNC0(FUNC2(hd, &uris[i]) == ESP_OK);
    }

    /* Register the MAX URI + 1 Handlers should fail */
    FUNC0(FUNC2(hd, &uris[HTTPD_TEST_MAX_URI_HANDLERS]) != ESP_OK);

    /* Unregister the one of the Handler should pass */
    FUNC0(FUNC3(hd, uris[0].uri, uris[0].method) == ESP_OK);

    /* Unregister non added Handler should fail */
    FUNC0(FUNC3(hd, uris[0].uri, uris[0].method) != ESP_OK);

    /* Register the MAX URI Handler should pass */
    FUNC0(FUNC2(hd, &uris[0]) == ESP_OK);

    /* Reregister same instance of handler should fail */
    FUNC0(FUNC2(hd, &uris[0]) != ESP_OK);

    /* Register the MAX URI + 1 Handlers should fail */
    FUNC0(FUNC2(hd, &uris[HTTPD_TEST_MAX_URI_HANDLERS]) != ESP_OK);

    /* Unregister the same handler for MAX URI Handlers */
    for (i = 0; i < HTTPD_TEST_MAX_URI_HANDLERS; i++) {
        FUNC0(FUNC3(hd, uris[i].uri, uris[i].method) == ESP_OK);
    }
    basic_sanity = false;
}