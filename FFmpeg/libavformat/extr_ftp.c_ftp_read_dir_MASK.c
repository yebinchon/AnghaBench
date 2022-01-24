#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_12__ {int /*<<< orphan*/  utf8; } ;
struct TYPE_11__ {char* dir_buffer; int dir_buffer_offset; int dir_buffer_size; int /*<<< orphan*/  utf8; int /*<<< orphan*/  conn_data; } ;
typedef  TYPE_2__ FTPContext ;
typedef  TYPE_3__ AVIODirEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DIR_BUFFER_SIZE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**) ; 
 TYPE_3__* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (TYPE_1__*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 char* FUNC6 (char*,char*) ; 

__attribute__((used)) static int FUNC7(URLContext *h, AVIODirEntry **next)
{
    FTPContext *s = h->priv_data;
    char *start, *found;
    int ret, retried;

    do {
        retried = 0;
        start = s->dir_buffer + s->dir_buffer_offset;
        while (!(found = FUNC6(start, "\n"))) {
            if (retried)
                return FUNC0(EIO);
            s->dir_buffer_size -= s->dir_buffer_offset;
            s->dir_buffer_offset = 0;
            if (s->dir_buffer_size)
                FUNC5(s->dir_buffer, start, s->dir_buffer_size);
            ret = FUNC3(s->conn_data, s->dir_buffer + s->dir_buffer_size, DIR_BUFFER_SIZE - (s->dir_buffer_size + 1));
            if (ret < 0)
                return ret;
            if (!ret) {
                *next = NULL;
                return 0;
            }
            s->dir_buffer_size += ret;
            s->dir_buffer[s->dir_buffer_size] = 0;
            start = s->dir_buffer;
            retried = 1;
        }
        s->dir_buffer_offset += (found + 1 - start);
        found[0] = 0;
        if (found > start && found[-1] == '\r')
            found[-1] = 0;

        *next = FUNC2();
        if (!*next)
            return FUNC0(ENOMEM);
        (*next)->utf8 = s->utf8;
        ret = FUNC4(h, start, *next);
        if (ret) {
            FUNC1(next);
            if (ret < 0)
                return ret;
        }
    } while (ret > 0);
    return 0;
}