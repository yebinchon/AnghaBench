#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  command ;
struct TYPE_7__ {int /*<<< orphan*/  filename; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {char* path; } ;
typedef  TYPE_2__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EIO ; 
 int MAX_URL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,char*,int const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC5(URLContext *h)
{
    FTPContext *s = h->priv_data;
    char command[MAX_URL_SIZE];
    static const int del_codes[] = {250, 421, 450, 500, 501, 502, 530, 550, 0};
    static const int rmd_codes[] = {250, 421, 500, 501, 502, 530, 550, 0};
    int ret;

    if ((ret = FUNC2(h, h->filename)) < 0)
        goto cleanup;

    FUNC4(command, sizeof(command), "DELE %s\r\n", s->path);
    if (FUNC3(s, command, del_codes, NULL) == 250) {
        ret = 0;
        goto cleanup;
    }

    FUNC4(command, sizeof(command), "RMD %s\r\n", s->path);
    if (FUNC3(s, command, rmd_codes, NULL) == 250)
        ret = 0;
    else
        ret = FUNC0(EIO);

cleanup:
    FUNC1(h);
    return ret;
}