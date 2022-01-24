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
struct sbg_string {int dummy; } ;
struct sbg_parser {int /*<<< orphan*/  err_msg; } ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (struct sbg_parser*,struct sbg_string*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,char) ; 

__attribute__((used)) static int FUNC2(struct sbg_parser *p, char o, struct sbg_string *r)
{
    if (!FUNC0(p, r)) {
        FUNC1(p->err_msg, sizeof(p->err_msg),
                 "option '%c' requires an argument", o);
        return AVERROR_INVALIDDATA;
    }
    return 1;
}