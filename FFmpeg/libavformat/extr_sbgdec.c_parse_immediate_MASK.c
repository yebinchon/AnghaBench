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
struct sbg_parser {int /*<<< orphan*/  err_msg; } ;

/* Variables and functions */
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC1(struct sbg_parser *p)
{
    FUNC0(p->err_msg, sizeof(p->err_msg),
             "immediate sequences not yet implemented");
    return AVERROR_PATCHWELCOME;
}