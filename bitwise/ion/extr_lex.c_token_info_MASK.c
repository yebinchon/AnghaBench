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
struct TYPE_2__ {scalar_t__ kind; char const* name; } ;

/* Variables and functions */
 scalar_t__ TOKEN_KEYWORD ; 
 scalar_t__ TOKEN_NAME ; 
 TYPE_1__ token ; 
 char const* FUNC0 (scalar_t__) ; 

const char *FUNC1(void) {
    if (token.kind == TOKEN_NAME || token.kind == TOKEN_KEYWORD) {
        return token.name;
    } else {
        return FUNC0(token.kind);
    }
}