#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_size; } ;
struct dirent {scalar_t__ d_type; char const* d_name; } ;
struct TYPE_6__ {char* uri; } ;
typedef  TYPE_1__ httpd_req_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  entrypath ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FILE_PATH_MAX ; 
 int /*<<< orphan*/  HTTPD_404_NOT_FOUND ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,int) ; 
 size_t FUNC11 (char const*) ; 

__attribute__((used)) static esp_err_t FUNC12(httpd_req_t *req, const char *dirpath)
{
    char entrypath[FILE_PATH_MAX];
    char entrysize[16];
    const char *entrytype;

    struct dirent *entry;
    struct stat entry_stat;

    DIR *dir = FUNC6(dirpath);
    const size_t dirpath_len = FUNC11(dirpath);

    /* Retrieve the base path of file storage to construct the full path */
    FUNC10(entrypath, dirpath, sizeof(entrypath));

    if (!dir) {
        FUNC0(TAG, "Failed to stat dir : %s", dirpath);
        /* Respond with 404 Not Found */
        FUNC4(req, HTTPD_404_NOT_FOUND, "Directory does not exist");
        return ESP_FAIL;
    }

    /* Send HTML file header */
    FUNC5(req, "<!DOCTYPE html><html><body>");

    /* Get handle to embedded file upload script */
    extern const unsigned char upload_script_start[] asm("_binary_upload_script_html_start");
    extern const unsigned char upload_script_end[]   asm("_binary_upload_script_html_end");
    const size_t upload_script_size = (upload_script_end - upload_script_start);

    /* Add file upload form and script which on execution sends a POST request to /upload */
    FUNC3(req, (const char *)upload_script_start, upload_script_size);

    /* Send file-list table definition and column labels */
    FUNC5(req,
        "<table class=\"fixed\" border=\"1\">"
        "<col width=\"800px\" /><col width=\"300px\" /><col width=\"300px\" /><col width=\"100px\" />"
        "<thead><tr><th>Name</th><th>Type</th><th>Size (Bytes)</th><th>Delete</th></tr></thead>"
        "<tbody>");

    /* Iterate over all files / folders and fetch their names and sizes */
    while ((entry = FUNC7(dir)) != NULL) {
        entrytype = (entry->d_type == DT_DIR ? "directory" : "file");

        FUNC10(entrypath + dirpath_len, entry->d_name, sizeof(entrypath) - dirpath_len);
        if (FUNC9(entrypath, &entry_stat) == -1) {
            FUNC0(TAG, "Failed to stat %s : %s", entrytype, entry->d_name);
            continue;
        }
        FUNC8(entrysize, "%ld", entry_stat.st_size);
        FUNC1(TAG, "Found %s : %s (%s bytes)", entrytype, entry->d_name, entrysize);

        /* Send chunk of HTML file containing table entries with file name and size */
        FUNC5(req, "<tr><td><a href=\"");
        FUNC5(req, req->uri);
        FUNC5(req, entry->d_name);
        if (entry->d_type == DT_DIR) {
            FUNC5(req, "/");
        }
        FUNC5(req, "\">");
        FUNC5(req, entry->d_name);
        FUNC5(req, "</a></td><td>");
        FUNC5(req, entrytype);
        FUNC5(req, "</td><td>");
        FUNC5(req, entrysize);
        FUNC5(req, "</td><td>");
        FUNC5(req, "<form method=\"post\" action=\"/delete");
        FUNC5(req, req->uri);
        FUNC5(req, entry->d_name);
        FUNC5(req, "\"><button type=\"submit\">Delete</button></form>");
        FUNC5(req, "</td></tr>\n");
    }
    FUNC2(dir);

    /* Finish the file list table */
    FUNC5(req, "</tbody></table>");

    /* Send remaining chunk of HTML file to complete it */
    FUNC5(req, "</body></html>");

    /* Send empty chunk to signal HTTP response completion */
    FUNC5(req, NULL);
    return ESP_OK;
}