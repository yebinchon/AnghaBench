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
typedef  int /*<<< orphan*/  OptionDef ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int INDENT ; 
 int SHOW_CONFIG ; 
 int SHOW_COPYRIGHT ; 
 int SHOW_VERSION ; 
 scalar_t__ hide_banner ; 
 int FUNC0 (int,char**,int /*<<< orphan*/  const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(int argc, char **argv, const OptionDef *options)
{
    int idx = FUNC0(argc, argv, options, "version");
    if (hide_banner || idx)
        return;

    FUNC2 (INDENT|SHOW_COPYRIGHT, AV_LOG_INFO);
    FUNC1(INDENT|SHOW_CONFIG,  AV_LOG_INFO);
    FUNC1(INDENT|SHOW_VERSION, AV_LOG_INFO);
}