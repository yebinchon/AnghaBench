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
typedef  int /*<<< orphan*/ * xmlNodePtr ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC10 (char*,char*,char**) ; 
 int FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC13 (char*,char) ; 
 int FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 char* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC18(AVFormatContext *s, const char *url, int *max_url_size, xmlNodePtr *baseurl_nodes, int n_baseurl_nodes)
{
    char *tmp_str = NULL;
    char *path = NULL;
    char *mpdName = NULL;
    xmlNodePtr node = NULL;
    char *baseurl = NULL;
    char *root_url = NULL;
    char *text = NULL;
    char *tmp = NULL;
    int isRootHttp = 0;
    char token ='/';
    int start =  0;
    int rootId = 0;
    int updated = 0;
    int size = 0;
    int i;
    int tmp_max_url_size = FUNC14(url);

    for (i = n_baseurl_nodes-1; i >= 0 ; i--) {
        text = FUNC16(baseurl_nodes[i]);
        if (!text)
            continue;
        tmp_max_url_size += FUNC14(text);
        if (FUNC11(text)) {
            FUNC15(text);
            break;
        }
        FUNC15(text);
    }

    tmp_max_url_size = FUNC1(tmp_max_url_size);
    text = FUNC3(tmp_max_url_size);
    if (!text) {
        updated = FUNC0(ENOMEM);
        goto end;
    }
    FUNC7(text, url, FUNC14(url)+1);
    tmp = text;
    while ((mpdName = FUNC10(tmp, "/", &tmp)))  {
        size = FUNC14(mpdName);
    }
    FUNC2(text);

    path = FUNC3(tmp_max_url_size);
    tmp_str = FUNC3(tmp_max_url_size);
    if (!tmp_str || !path) {
        updated = FUNC0(ENOMEM);
        goto end;
    }

    FUNC7 (path, url, FUNC14(url) - size + 1);
    for (rootId = n_baseurl_nodes - 1; rootId > 0; rootId --) {
        if (!(node = baseurl_nodes[rootId])) {
            continue;
        }
        text = FUNC16(node);
        if (FUNC11(text)) {
            FUNC15(text);
            break;
        }
        FUNC15(text);
    }

    node = baseurl_nodes[rootId];
    baseurl = FUNC16(node);
    root_url = (FUNC4(baseurl, "")) ? baseurl : path;
    if (node) {
        FUNC17(node, root_url);
        updated = 1;
    }

    size = FUNC14(root_url);
    isRootHttp = FUNC11(root_url);

    if (root_url[size - 1] != token) {
        FUNC6(root_url, "/", size + 2);
        size += 2;
    }

    for (i = 0; i < n_baseurl_nodes; ++i) {
        if (i == rootId) {
            continue;
        }
        text = FUNC16(baseurl_nodes[i]);
        if (text && !FUNC9(text, "/", NULL)) {
            FUNC12(tmp_str, 0, FUNC14(tmp_str));
            if (!FUNC11(text) && isRootHttp) {
                FUNC7(tmp_str, root_url, size + 1);
            }
            start = (text[0] == token);
            if (start && FUNC5(tmp_str, text)) {
                char *p = tmp_str;
                if (!FUNC8(tmp_str, "http://", 7)) {
                    p += 7;
                } else if (!FUNC8(tmp_str, "https://", 8)) {
                    p += 8;
                }
                p = FUNC13(p, '/');
                FUNC12(p + 1, 0, FUNC14(p));
            }
            FUNC6(tmp_str, text + start, tmp_max_url_size);
            FUNC17(baseurl_nodes[i], tmp_str);
            updated = 1;
            FUNC15(text);
        }
    }

end:
    if (tmp_max_url_size > *max_url_size) {
        *max_url_size = tmp_max_url_size;
    }
    FUNC2(path);
    FUNC2(tmp_str);
    FUNC15(baseurl);
    return updated;

}