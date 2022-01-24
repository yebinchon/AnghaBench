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
struct arg_date {int dummy; } ;

/* Variables and functions */
 struct arg_date* FUNC0 (char const*,char const*,char const*,char const*,int,int,char const*) ; 

struct arg_date * FUNC1(
    const char * shortopts,
    const char * longopts,
    const char * format,
    const char *datatype,
    const char *glossary)
{
    return FUNC0(shortopts, longopts, format, datatype, 1, 1, glossary);
}