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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
    FUNC0("Simple expression evalutor, please *don't* turn me to a feature-complete language interpreter\n");
    FUNC0("usage: ffeval [OPTIONS]\n");
    FUNC0("\n"
           "Options:\n"
           "-e                echo each input line on output\n"
           "-h                print this help\n"
           "-i INFILE         set INFILE as input file, stdin if omitted\n"
           "-o OUTFILE        set OUTFILE as output file, stdout if omitted\n"
           "-p PROMPT         set output prompt\n");
}