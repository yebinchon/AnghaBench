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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(URLContext *s, char *param, uint8_t **p)
{
    char *field, *value;
    char type;

    /* The type must be B for Boolean, N for number, S for string, O for
     * object, or Z for null. For Booleans the data must be either 0 or 1 for
     * FALSE or TRUE, respectively. Likewise for Objects the data must be
     * 0 or 1 to end or begin an object, respectively. Data items in subobjects
     * may be named, by prefixing the type with 'N' and specifying the name
     * before the value (ie. NB:myFlag:1). This option may be used multiple times
     * to construct arbitrary AMF sequences. */
    if (param[0] && param[1] == ':') {
        type = param[0];
        value = param + 2;
    } else if (param[0] == 'N' && param[1] && param[2] == ':') {
        type = param[1];
        field = param + 3;
        value = FUNC9(field, ':');
        if (!value)
            goto fail;
        *value = '\0';
        value++;

        FUNC3(p, field);
    } else {
        goto fail;
    }

    switch (type) {
    case 'B':
        FUNC2(p, value[0] != '0');
        break;
    case 'S':
        FUNC8(p, value);
        break;
    case 'N':
        FUNC5(p, FUNC10(value, NULL));
        break;
    case 'Z':
        FUNC4(p);
        break;
    case 'O':
        if (value[0] != '0')
            FUNC7(p);
        else
            FUNC6(p);
        break;
    default:
        goto fail;
        break;
    }

    return 0;

fail:
    FUNC1(s, AV_LOG_ERROR, "Invalid AMF parameter: %s\n", param);
    return FUNC0(EINVAL);
}