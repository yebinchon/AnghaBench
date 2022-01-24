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
typedef  char u8_t ;
typedef  int /*<<< orphan*/  id64 ;

/* Variables and functions */
 int FUNC0 (char*,char const*,int,char*) ; 
 int FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

int FUNC3(const u8_t n[16], u8_t out[8])
{
    u8_t id64[] = { 'i', 'd', '6', '4', 0x01 };
    u8_t tmp[16];
    u8_t t[16];
    int err;

    err = FUNC1("smk3", tmp);
    if (err) {
        return err;
    }

    err = FUNC0(tmp, n, 16, t);
    if (err) {
        return err;
    }

    err = FUNC0(t, id64, sizeof(id64), tmp);
    if (err) {
        return err;
    }

    FUNC2(out, tmp + 8, 8);

    return 0;
}