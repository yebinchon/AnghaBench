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
typedef  int u32_t ;
struct bt_mesh_prov {int dummy; } ;
struct bt_mesh_gatt_service {int dummy; } ;
struct bt_mesh_comp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_BLE_MESH_GATT_PROXY_SERVER ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_PB_GATT ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_PROV ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_PROXY ; 
 int /*<<< orphan*/  CONFIG_BLE_MESH_SETTINGS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct bt_mesh_comp const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct bt_mesh_gatt_service*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct bt_mesh_prov const*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int portTICK_PERIOD_MS ; 
 int FUNC16 (struct bt_mesh_prov const*) ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

int FUNC19(const struct bt_mesh_prov *prov,
                 const struct bt_mesh_comp *comp)
{
    int err;

    FUNC8();

    FUNC7();

    FUNC1();

    err = FUNC4(comp);
    if (err) {
        return err;
    }

    FUNC5();

#if CONFIG_BLE_MESH_NODE
    extern struct bt_mesh_gatt_service proxy_svc;
    if (IS_ENABLED(CONFIG_BLE_MESH_GATT_PROXY_SERVER)) {
        bt_mesh_gatts_service_register(&proxy_svc);
    }

    extern struct bt_mesh_gatt_service prov_svc;
    if (IS_ENABLED(CONFIG_BLE_MESH_PB_GATT)) {
        bt_mesh_gatts_service_register(&prov_svc);
    }
#endif

    if (FUNC0(CONFIG_BLE_MESH_PROV)) {
#if CONFIG_BLE_MESH_NODE
        err = bt_mesh_prov_init(prov);
        if (err) {
            return err;
        }
#endif
#if CONFIG_BLE_MESH_PROVISIONER
        err = provisioner_prov_init(prov);
        if (err) {
            return err;
        }
#endif
    }

    FUNC9();
    FUNC15();

#if CONFIG_BLE_MESH_NODE
    /* Changed by Espressif, add random delay (0 ~ 3s) */
#if defined(CONFIG_BLE_MESH_FAST_PROV)
    u32_t delay = 0;
    bt_mesh_rand(&delay, sizeof(u32_t));
    vTaskDelay((delay % 3000) / portTICK_PERIOD_MS);
#endif
    bt_mesh_beacon_init();
#endif

    FUNC2();

    if (FUNC0(CONFIG_BLE_MESH_PROXY)) {
#if CONFIG_BLE_MESH_NODE
        bt_mesh_proxy_init();
#endif
#if (CONFIG_BLE_MESH_PROVISIONER && CONFIG_BLE_MESH_PB_GATT) || \
    CONFIG_BLE_MESH_GATT_PROXY_CLIENT
        bt_mesh_proxy_prov_client_init();
#endif
    }

#if !CONFIG_BLE_MESH_NODE && CONFIG_BLE_MESH_PROVISIONER
    /* If node & provisioner are both enabled and the
     * device starts as a node, it must finish provisioning */
    err = provisioner_upper_init();
    if (err) {
        return err;
    }
#endif

#if defined(CONFIG_BLE_MESH_SETTINGS)
    if (IS_ENABLED(CONFIG_BLE_MESH_SETTINGS)) {
        bt_mesh_settings_init();
    }
#endif

    return 0;
}