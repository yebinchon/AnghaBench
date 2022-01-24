#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct file_server_data {int /*<<< orphan*/  base_path; } ;
struct TYPE_7__ {int uri; scalar_t__ user_ctx; } ;
typedef  TYPE_1__ httpd_req_t ;
typedef  int /*<<< orphan*/  filepath ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FILE_PATH_MAX ; 
 int /*<<< orphan*/  HTTPD_400_BAD_REQUEST ; 
 int /*<<< orphan*/  HTTPD_500_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  TAG ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int FUNC7 (char*,struct stat*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static esp_err_t FUNC10(httpd_req_t *req)
{
    char filepath[FILE_PATH_MAX];
    struct stat file_stat;

    /* Skip leading "/delete" from URI to get filename */
    /* Note sizeof() counts NULL termination hence the -1 */
    const char *filename = FUNC2(filepath, ((struct file_server_data *)req->user_ctx)->base_path,
                                             req->uri  + sizeof("/delete") - 1, sizeof(filepath));
    if (!filename) {
        /* Respond with 500 Internal Server Error */
        FUNC3(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Filename too long");
        return ESP_FAIL;
    }

    /* Filename cannot have a trailing '/' */
    if (filename[FUNC8(filename) - 1] == '/') {
        FUNC0(TAG, "Invalid filename : %s", filename);
        FUNC3(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Invalid filename");
        return ESP_FAIL;
    }

    if (FUNC7(filepath, &file_stat) == -1) {
        FUNC0(TAG, "File does not exist : %s", filename);
        /* Respond with 400 Bad Request */
        FUNC3(req, HTTPD_400_BAD_REQUEST, "File does not exist");
        return ESP_FAIL;
    }

    FUNC1(TAG, "Deleting file : %s", filename);
    /* Delete file */
    FUNC9(filepath);

    /* Redirect onto root to see the updated file list */
    FUNC6(req, "303 See Other");
    FUNC5(req, "Location", "/");
    FUNC4(req, "File deleted successfully");
    return ESP_OK;
}