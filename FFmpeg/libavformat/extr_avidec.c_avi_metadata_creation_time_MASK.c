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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * months ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,int,int,char*) ; 
 int FUNC3 (char*,char*,char*,int*,char*,int*) ; 

__attribute__((used)) static void FUNC4(AVDictionary **metadata, char *date)
{
    char month[4], time[9], buffer[64];
    int i, day, year;
    /* parse standard AVI date format (ie. "Mon Mar 10 15:04:43 2003") */
    if (FUNC3(date, "%*3s%*[ ]%3s%*[ ]%2d%*[ ]%8s%*[ ]%4d",
               month, &day, time, &year) == 4) {
        for (i = 0; i < 12; i++)
            if (!FUNC1(month, months[i])) {
                FUNC2(buffer, sizeof(buffer), "%.4d-%.2d-%.2d %s",
                         year, i + 1, day, time);
                FUNC0(metadata, "creation_time", buffer, 0);
            }
    } else if (date[4] == '/' && date[7] == '/') {
        date[4] = date[7] = '-';
        FUNC0(metadata, "creation_time", date, 0);
    }
}