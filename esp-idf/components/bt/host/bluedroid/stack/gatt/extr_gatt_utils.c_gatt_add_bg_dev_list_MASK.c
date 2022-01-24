#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ gatt_if; scalar_t__ listening; } ;
typedef  TYPE_1__ tGATT_REG ;
typedef  scalar_t__ tGATT_IF ;
struct TYPE_7__ {scalar_t__* gatt_if; scalar_t__* listen_gif; } ;
typedef  TYPE_2__ tGATT_BG_CONN_DEV ;
typedef  size_t UINT8 ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ GATT_LISTEN_TO_ALL ; 
 scalar_t__ GATT_LISTEN_TO_NONE ; 
 size_t GATT_MAX_APPS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 

BOOLEAN FUNC5(tGATT_REG *p_reg,  BD_ADDR bd_addr, BOOLEAN is_initator)
{
    tGATT_IF gatt_if =  p_reg->gatt_if;
    tGATT_BG_CONN_DEV   *p_dev = NULL;
    UINT8       i;
    BOOLEAN      ret = FALSE;

    if ((p_dev = FUNC4(bd_addr)) == NULL) {
        p_dev = FUNC3(bd_addr);
    }

    if (p_dev) {
        for (i = 0; i < GATT_MAX_APPS; i ++) {
            if (is_initator) {
                if (p_dev->gatt_if[i] == gatt_if) {
                    FUNC2("device already in iniator white list");
                    return TRUE;
                } else if (p_dev->gatt_if[i] == 0) {
                    p_dev->gatt_if[i] = gatt_if;
                    if (i == 0) {
                        ret = FUNC1(TRUE, bd_addr);
                    } else {
                        ret = TRUE;
                    }
                    break;
                }
            } else {
                if (p_dev->listen_gif[i] == gatt_if) {
                    FUNC2("device already in adv white list");
                    return TRUE;
                } else if (p_dev->listen_gif[i] == 0) {
                    if (p_reg->listening == GATT_LISTEN_TO_ALL) {
                        p_reg->listening = GATT_LISTEN_TO_NONE;
                    }

                    p_reg->listening ++;
                    p_dev->listen_gif[i] = gatt_if;

                    if (i == 0) {
                        // To check, we do not support background connection, code will not be called here
                        ret = FUNC0(TRUE, bd_addr, 0, NULL);
                    } else {
                        ret = TRUE;
                    }
                    break;
                }
            }
        }
    } else {
        FUNC2("no device record available");
    }

    return ret;
}