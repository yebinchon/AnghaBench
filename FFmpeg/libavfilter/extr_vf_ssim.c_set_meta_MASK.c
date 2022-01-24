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
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  key2 ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC2(AVDictionary **metadata, const char *key, char comp, float d)
{
    char value[128];
    FUNC1(value, sizeof(value), "%0.2f", d);
    if (comp) {
        char key2[128];
        FUNC1(key2, sizeof(key2), "%s%c", key, comp);
        FUNC0(metadata, key2, value, 0);
    } else {
        FUNC0(metadata, key, value, 0);
    }
}