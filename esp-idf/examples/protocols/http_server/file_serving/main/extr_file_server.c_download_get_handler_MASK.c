#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct file_server_data {char* scratch; int /*<<< orphan*/  base_path; } ;
struct TYPE_10__ {scalar_t__ user_ctx; int /*<<< orphan*/  uri; } ;
typedef  TYPE_1__ httpd_req_t ;
typedef  int /*<<< orphan*/  filepath ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ ESP_OK ; 
 int FILE_PATH_MAX ; 
 int /*<<< orphan*/  HTTPD_404_NOT_FOUND ; 
 int /*<<< orphan*/  HTTPD_500_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  SCRATCH_BUFSIZE ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 size_t FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char const*) ; 
 int FUNC13 (char*,struct stat*) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int FUNC15 (char const*) ; 

__attribute__((used)) static esp_err_t FUNC16(httpd_req_t *req)
{
    char filepath[FILE_PATH_MAX];
    FILE *fd = NULL;
    struct stat file_stat;

    const char *filename = FUNC6(filepath, ((struct file_server_data *)req->user_ctx)->base_path,
                                             req->uri, sizeof(filepath));
    if (!filename) {
        FUNC0(TAG, "Filename is too long");
        /* Respond with 500 Internal Server Error */
        FUNC9(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Filename too long");
        return ESP_FAIL;
    }

    /* If name has trailing '/', respond with directory contents */
    if (filename[FUNC15(filename) - 1] == '/') {
        return FUNC7(req, filepath);
    }

    if (FUNC13(filepath, &file_stat) == -1) {
        /* If file not present on SPIFFS check if URI
         * corresponds to one of the hardcoded paths */
        if (FUNC14(filename, "/index.html") == 0) {
            return FUNC11(req);
        } else if (FUNC14(filename, "/favicon.ico") == 0) {
            return FUNC2(req);
        }
        FUNC0(TAG, "Failed to stat file : %s", filepath);
        /* Respond with 404 Not Found */
        FUNC9(req, HTTPD_404_NOT_FOUND, "File does not exist");
        return ESP_FAIL;
    }

    fd = FUNC4(filepath, "r");
    if (!fd) {
        FUNC0(TAG, "Failed to read existing file : %s", filepath);
        /* Respond with 500 Internal Server Error */
        FUNC9(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to read existing file");
        return ESP_FAIL;
    }

    FUNC1(TAG, "Sending file : %s (%ld bytes)...", filename, file_stat.st_size);
    FUNC12(req, filename);

    /* Retrieve the pointer to scratch buffer for temporary storage */
    char *chunk = ((struct file_server_data *)req->user_ctx)->scratch;
    size_t chunksize;
    do {
        /* Read file in chunks into the scratch buffer */
        chunksize = FUNC5(chunk, 1, SCRATCH_BUFSIZE, fd);

        /* Send the buffer contents as HTTP response chunk */
        if (FUNC8(req, chunk, chunksize) != ESP_OK) {
            FUNC3(fd);
            FUNC0(TAG, "File sending failed!");
            /* Abort sending file */
            FUNC10(req, NULL);
            /* Respond with 500 Internal Server Error */
            FUNC9(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Failed to send file");
            return ESP_FAIL;
        }

        /* Keep looping till the whole file is sent */
    } while (chunksize != 0);

    /* Close file after sending complete */
    FUNC3(fd);
    FUNC1(TAG, "File sending complete");

    /* Respond with an empty chunk to signal HTTP response completion */
    FUNC8(req, NULL, 0);
    return ESP_OK;
}