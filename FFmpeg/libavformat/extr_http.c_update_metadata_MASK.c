#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_2__ HTTPContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(URLContext *h, char *data)
{
    char *key;
    char *val;
    char *end;
    char *next = data;
    HTTPContext *s = h->priv_data;

    while (*next) {
        key = next;
        val = FUNC2(key, "='");
        if (!val)
            break;
        end = FUNC2(val, "';");
        if (!end)
            break;

        *val = '\0';
        *end = '\0';
        val += 2;

        FUNC0(&s->metadata, key, val, 0);
        FUNC1(h, AV_LOG_VERBOSE, "Metadata update for %s: %s\n", key, val);

        next = end + 2;
    }
}