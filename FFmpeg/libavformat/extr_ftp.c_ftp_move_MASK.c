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
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  command ;
struct TYPE_8__ {int /*<<< orphan*/  filename; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_9__ {char* path; } ;
typedef  TYPE_2__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int MAX_URL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,char*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC6(URLContext *h_src, URLContext *h_dst)
{
    FTPContext *s = h_src->priv_data;
    char command[MAX_URL_SIZE], path[MAX_URL_SIZE];
    static const int rnfr_codes[] = {350, 421, 450, 500, 501, 502, 503, 530, 0};
    static const int rnto_codes[] = {250, 421, 500, 501, 502, 503, 530, 532, 553, 0};
    int ret;

    if ((ret = FUNC3(h_src, h_src->filename)) < 0)
        goto cleanup;

    FUNC5(command, sizeof(command), "RNFR %s\r\n", s->path);
    if (FUNC4(s, command, rnfr_codes, NULL) != 350) {
        ret = FUNC0(EIO);
        goto cleanup;
    }

    FUNC1(0, 0, 0, 0, 0, 0, 0,
                 path, sizeof(path),
                 h_dst->filename);
    FUNC5(command, sizeof(command), "RNTO %s\r\n", path);
    if (FUNC4(s, command, rnto_codes, NULL) == 250)
        ret = 0;
    else
        ret = FUNC0(EIO);

cleanup:
    FUNC2(h_src);
    return ret;
}