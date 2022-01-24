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
typedef  int /*<<< orphan*/  id6 ;

/* Variables and functions */
 char FUNC0 (int) ; 
 int FUNC1 (char*,char const*,int,char*) ; 
 int FUNC2 (char*,char*) ; 

int FUNC3(const u8_t n[16], u8_t out[1])
{
    u8_t id6[] = { 'i', 'd', '6', 0x01 };
    u8_t tmp[16];
    u8_t t[16];
    int err;

    err = FUNC2("smk4", tmp);
    if (err) {
        return err;
    }

    err = FUNC1(tmp, n, 16, t);
    if (err) {
        return err;
    }

    err = FUNC1(t, id6, sizeof(id6), tmp);
    if (err) {
        return err;
    }

    out[0] = tmp[15] & FUNC0(6);

    return 0;
}