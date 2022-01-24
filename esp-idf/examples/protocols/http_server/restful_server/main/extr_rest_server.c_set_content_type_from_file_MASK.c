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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static esp_err_t FUNC2(httpd_req_t *req, const char *filepath)
{
    const char *type = "text/plain";
    if (FUNC0(filepath, ".html")) {
        type = "text/html";
    } else if (FUNC0(filepath, ".js")) {
        type = "application/javascript";
    } else if (FUNC0(filepath, ".css")) {
        type = "text/css";
    } else if (FUNC0(filepath, ".png")) {
        type = "image/png";
    } else if (FUNC0(filepath, ".ico")) {
        type = "image/x-icon";
    } else if (FUNC0(filepath, ".svg")) {
        type = "text/xml";
    }
    return FUNC1(req, type);
}