#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct file_server_data {int /*<<< orphan*/  base_path; } ;
struct TYPE_6__ {char* uri; struct file_server_data* user_ctx; int /*<<< orphan*/  handler; int /*<<< orphan*/  method; } ;
typedef  TYPE_1__ httpd_uri_t ;
typedef  int /*<<< orphan*/ * httpd_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  uri_match_fn; } ;
typedef  TYPE_2__ httpd_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_ERR_NO_MEM ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 TYPE_2__ FUNC2 () ; 
 int /*<<< orphan*/  HTTP_GET ; 
 int /*<<< orphan*/  HTTP_POST ; 
 int /*<<< orphan*/  TAG ; 
 struct file_server_data* FUNC3 (int,int) ; 
 int /*<<< orphan*/  delete_post_handler ; 
 int /*<<< orphan*/  download_get_handler ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,TYPE_2__*) ; 
 int /*<<< orphan*/  httpd_uri_match_wildcard ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  upload_post_handler ; 

esp_err_t FUNC8(const char *base_path)
{
    static struct file_server_data *server_data = NULL;

    /* Validate file storage base path */
    if (!base_path || FUNC6(base_path, "/spiffs") != 0) {
        FUNC0(TAG, "File server presently supports only '/spiffs' as base path");
        return ESP_ERR_INVALID_ARG;
    }

    if (server_data) {
        FUNC0(TAG, "File server already started");
        return ESP_ERR_INVALID_STATE;
    }

    /* Allocate memory for server data */
    server_data = FUNC3(1, sizeof(struct file_server_data));
    if (!server_data) {
        FUNC0(TAG, "Failed to allocate memory for server data");
        return ESP_ERR_NO_MEM;
    }
    FUNC7(server_data->base_path, base_path,
            sizeof(server_data->base_path));

    httpd_handle_t server = NULL;
    httpd_config_t config = FUNC2();

    /* Use the URI wildcard matching function in order to
     * allow the same handler to respond to multiple different
     * target URIs which match the wildcard scheme */
    config.uri_match_fn = httpd_uri_match_wildcard;

    FUNC1(TAG, "Starting HTTP Server");
    if (FUNC5(&server, &config) != ESP_OK) {
        FUNC0(TAG, "Failed to start file server!");
        return ESP_FAIL;
    }

    /* URI handler for getting uploaded files */
    httpd_uri_t file_download = {
        .uri       = "/*",  // Match all URIs of type /path/to/file
        .method    = HTTP_GET,
        .handler   = download_get_handler,
        .user_ctx  = server_data    // Pass server data as context
    };
    FUNC4(server, &file_download);

    /* URI handler for uploading files to server */
    httpd_uri_t file_upload = {
        .uri       = "/upload/*",   // Match all URIs of type /upload/path/to/file
        .method    = HTTP_POST,
        .handler   = upload_post_handler,
        .user_ctx  = server_data    // Pass server data as context
    };
    FUNC4(server, &file_upload);

    /* URI handler for deleting files from server */
    httpd_uri_t file_delete = {
        .uri       = "/delete/*",   // Match all URIs of type /delete/path/to/file
        .method    = HTTP_POST,
        .handler   = delete_post_handler,
        .user_ctx  = server_data    // Pass server data as context
    };
    FUNC4(server, &file_delete);

    return ESP_OK;
}