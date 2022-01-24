#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static esp_err_t FUNC2(httpd_req_t *req, const char *filename)
{
    if (FUNC0(filename, ".pdf")) {
        return FUNC1(req, "application/pdf");
    } else if (FUNC0(filename, ".html")) {
        return FUNC1(req, "text/html");
    } else if (FUNC0(filename, ".jpeg")) {
        return FUNC1(req, "image/jpeg");
    } else if (FUNC0(filename, ".ico")) {
        return FUNC1(req, "image/x-icon");
    }
    /* This is a limited set only */
    /* For any other type always set as plain text */
    return FUNC1(req, "text/plain");
}