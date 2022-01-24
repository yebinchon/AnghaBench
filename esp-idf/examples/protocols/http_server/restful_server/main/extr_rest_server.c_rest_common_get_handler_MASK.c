#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_8__ {char* scratch; int /*<<< orphan*/  base_path; } ;
typedef  TYPE_1__ rest_server_context_t ;
struct TYPE_9__ {char* uri; scalar_t__ user_ctx; } ;
typedef  TYPE_2__ httpd_req_t ;
typedef  int /*<<< orphan*/  filepath ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int FILE_PATH_MAX ; 
 int /*<<< orphan*/  HTTPD_500_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  REST_TAG ; 
 int /*<<< orphan*/  SCRATCH_BUFSIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static esp_err_t FUNC12(httpd_req_t *req)
{
    char filepath[FILE_PATH_MAX];

    rest_server_context_t *rest_context = (rest_server_context_t *)req->user_ctx;
    FUNC10(filepath, rest_context->base_path, sizeof(filepath));
    if (req->uri[FUNC11(req->uri) - 1] == '/') {
        FUNC9(filepath, "/index.html", sizeof(filepath));
    } else {
        FUNC9(filepath, req->uri, sizeof(filepath));
    }
    int fd = FUNC6(filepath, O_RDONLY, 0);
    if (fd == -1) {
        FUNC0(REST_TAG, "Failed to open file : %s", filepath);
        /* Respond with 500 Internal Server Error */
        FUNC4(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to read existing file");
        return ESP_FAIL;
    }

    FUNC8(req, filepath);

    char *chunk = rest_context->scratch;
    ssize_t read_bytes;
    do {
        /* Read file in chunks into the scratch buffer */
        read_bytes = FUNC7(fd, chunk, SCRATCH_BUFSIZE);
        if (read_bytes == -1) {
            FUNC0(REST_TAG, "Failed to read file : %s", filepath);
        } else if (read_bytes > 0) {
            /* Send the buffer contents as HTTP response chunk */
            if (FUNC3(req, chunk, read_bytes) != ESP_OK) {
                FUNC2(fd);
                FUNC0(REST_TAG, "File sending failed!");
                /* Abort sending file */
                FUNC5(req, NULL);
                /* Respond with 500 Internal Server Error */
                FUNC4(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to send file");
                return ESP_FAIL;
            }
        }
    } while (read_bytes > 0);
    /* Close file after sending complete */
    FUNC2(fd);
    FUNC1(REST_TAG, "File sending complete");
    /* Respond with an empty chunk to signal HTTP response completion */
    FUNC3(req, NULL, 0);
    return ESP_OK;
}