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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_3__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char,int) ; 
 int FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, const char *keyword, int value, int *lines_written)
{
    int len, ret;
    uint8_t header[80];

    len = FUNC4(keyword);
    FUNC2(header, ' ', sizeof(header));
    FUNC1(header, keyword, len);

    header[8] = '=';
    header[9] = ' ';

    ret = FUNC3(header + 10, 70, "%d", value);
    FUNC2(&header[ret + 10], ' ', sizeof(header) - (ret + 10));

    FUNC0(s->pb, header, sizeof(header));
    *lines_written += 1;
    return 0;
}