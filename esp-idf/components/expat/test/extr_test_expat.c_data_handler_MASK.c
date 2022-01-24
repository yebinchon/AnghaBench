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
struct TYPE_3__ {scalar_t__ output_off; scalar_t__ output; } ;
typedef  TYPE_1__ user_data_t ;
typedef  int /*<<< orphan*/  XML_Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (scalar_t__,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(void *userData, const XML_Char *s, int len)
{
    user_data_t *user_data = (user_data_t *) userData;

    FUNC1(user_data);

    // s is not zero-terminated
    char tmp_str[len+1];
    FUNC3(tmp_str, s, len+1);

    int ret = FUNC2(user_data->output + user_data->output_off, sizeof(user_data->output) - user_data->output_off,
                "%s", tmp_str);
    FUNC0(FUNC4(tmp_str), ret);
    user_data->output_off += ret;
}