#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ key_len; scalar_t__* key; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 TYPE_1__* gWpsSm ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 

int
FUNC5(char *key, u8 key_len)
{
    u8 *tmpkey;

    if (!key || !gWpsSm) {
        return ESP_FAIL;
    }

    FUNC1(gWpsSm->key, 0x00, sizeof(gWpsSm->key));
    FUNC0(gWpsSm->key, key, key_len);
    gWpsSm->key_len = key_len;

    tmpkey = (u8 *)FUNC3(key_len + 1);
    if (tmpkey) {
        FUNC0(tmpkey, key, key_len);
        FUNC4(MSG_DEBUG, "WPS: key[%s]", tmpkey);
        FUNC2(tmpkey);
    }
    return ESP_OK;
}