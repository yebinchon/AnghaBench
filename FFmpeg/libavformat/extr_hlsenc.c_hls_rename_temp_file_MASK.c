#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* url; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char*,char*,TYPE_1__*) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVFormatContext *oc)
{
    size_t len = FUNC4(oc->url);
    char *final_filename = FUNC2(oc->url);
    int ret;

    if (!final_filename)
        return FUNC0(ENOMEM);
    final_filename[len-4] = '\0';
    ret = FUNC3(oc->url, final_filename, s);
    oc->url[len-4] = '\0';
    FUNC1(&final_filename);
    return ret;
}