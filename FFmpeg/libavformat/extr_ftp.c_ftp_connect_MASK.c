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
typedef  int /*<<< orphan*/  proto ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  hostname ;
typedef  int /*<<< orphan*/  credentials ;
struct TYPE_6__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_7__ {int filesize; int server_control_port; char* option_user; char* option_password; char* path; void* password; void* user; void* hostname; int /*<<< orphan*/  anonymous_password; int /*<<< orphan*/ * features; scalar_t__ position; int /*<<< orphan*/  listing_method; int /*<<< orphan*/  state; } ;
typedef  TYPE_2__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DISCONNECTED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int MAX_URL_SIZE ; 
 int /*<<< orphan*/  UNKNOWN_METHOD ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* FUNC3 (char const*) ; 
 char* FUNC4 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int,char*,int,int*,char*,int,char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC9(URLContext *h, const char *url)
{
    char proto[10], path[MAX_URL_SIZE], credentials[MAX_URL_SIZE], hostname[MAX_URL_SIZE];
    const char *tok_user = NULL, *tok_pass = NULL;
    char *end = NULL, *newpath = NULL;
    int err;
    FTPContext *s = h->priv_data;

    s->state = DISCONNECTED;
    s->listing_method = UNKNOWN_METHOD;
    s->filesize = -1;
    s->position = 0;
    s->features = NULL;

    FUNC5(proto, sizeof(proto),
                 credentials, sizeof(credentials),
                 hostname, sizeof(hostname),
                 &s->server_control_port,
                 path, sizeof(path),
                 url);

    tok_user = FUNC4(credentials, ":", &end);
    tok_pass = FUNC4(end, ":", &end);
    if (!tok_user) {
        if (!s->option_user) {
            tok_user = "anonymous";
            tok_pass = FUNC6(s->anonymous_password, "nopassword");
        } else {
            tok_user = s->option_user;
        }
    }
    if (!tok_pass) {
        tok_pass = s->option_password;
    }
    s->user = FUNC3(tok_user);
    s->password = FUNC3(tok_pass);
    s->hostname = FUNC3(hostname);
    if (!s->hostname || !s->user || (tok_pass && !s->password)) {
        return FUNC0(ENOMEM);
    }

    if (s->server_control_port < 0 || s->server_control_port > 65535)
        s->server_control_port = 21;

    if ((err = FUNC7(h)) < 0)
        return err;

    if ((err = FUNC8(s)) < 0)
        return err;

    newpath = FUNC1(s->path, path);
    if (!newpath)
        return FUNC0(ENOMEM);
    FUNC2(s->path);
    s->path = newpath;

    return 0;
}