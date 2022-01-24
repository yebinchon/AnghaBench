#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_3__ {char* name; } ;
typedef  TYPE_1__ AVPixFmtDescriptor ;

/* Variables and functions */
 int AV_PIX_FMT_NONE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 

enum AVPixelFormat FUNC5(enum AVPixelFormat pix_fmt)
{
    const AVPixFmtDescriptor *desc = FUNC0(pix_fmt);
    char name[16];
    int i;

    if (!desc || FUNC4(desc->name) < 2)
        return AV_PIX_FMT_NONE;
    FUNC1(name, desc->name, sizeof(name));
    i = FUNC4(name) - 2;
    if (FUNC3(name + i, "be") && FUNC3(name + i, "le"))
        return AV_PIX_FMT_NONE;

    name[i] ^= 'b' ^ 'l';

    return FUNC2(name);
}