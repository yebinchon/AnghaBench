#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_init_config_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/  password; int /*<<< orphan*/  max_connection; } ;
struct TYPE_6__ {int ssid_len; int /*<<< orphan*/  password; int /*<<< orphan*/  ssid; } ;
struct TYPE_8__ {TYPE_2__ mesh_ap; TYPE_1__ router; int /*<<< orphan*/  channel; int /*<<< orphan*/  mesh_id; } ;
typedef  TYPE_3__ mesh_cfg_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MESH_AP_AUTHMODE ; 
 int /*<<< orphan*/  CONFIG_MESH_AP_CONNECTIONS ; 
 int /*<<< orphan*/  CONFIG_MESH_AP_PASSWD ; 
 int /*<<< orphan*/  CONFIG_MESH_CHANNEL ; 
 int /*<<< orphan*/  CONFIG_MESH_ROUTER_PASSWD ; 
 int /*<<< orphan*/  CONFIG_MESH_ROUTER_SSID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESP_EVENT_ANY_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP_EVENT ; 
 int /*<<< orphan*/  IP_EVENT_STA_GOT_IP ; 
 int /*<<< orphan*/  MESH_EVENT ; 
 int /*<<< orphan*/  MESH_ID ; 
 TYPE_3__ FUNC2 () ; 
 int /*<<< orphan*/  MESH_TAG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  WIFI_STORAGE_FLASH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  ip_event_handler ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mesh_event_handler ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  netif_sta ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 

void FUNC20(void)
{
    FUNC0(FUNC17());
    FUNC0(FUNC18());
    /*  tcpip initialization */
    FUNC12();
    /*  event initialization */
    FUNC0(FUNC5());
    /*  crete network interfaces for mesh (only station instance saved for further manipulation, soft AP instance ignored */
    FUNC0(FUNC11(&netif_sta, NULL));
    /*  wifi initialization */
    wifi_init_config_t config = FUNC3();
    FUNC0(FUNC13(&config));
    FUNC0(FUNC4(IP_EVENT, IP_EVENT_STA_GOT_IP, &ip_event_handler, NULL));
    FUNC0(FUNC14(WIFI_STORAGE_FLASH));
    FUNC0(FUNC15());
    /*  mesh initialization */
    FUNC0(FUNC7());
    FUNC0(FUNC4(MESH_EVENT, ESP_EVENT_ANY_ID, &mesh_event_handler, NULL));
    /* mesh enable IE crypto */
    mesh_cfg_t cfg = FUNC2();
    /* mesh ID */
    FUNC16((uint8_t *) &cfg.mesh_id, MESH_ID, 6);
    /* router */
    cfg.channel = CONFIG_MESH_CHANNEL;
    cfg.router.ssid_len = FUNC19(CONFIG_MESH_ROUTER_SSID);
    FUNC16((uint8_t *) &cfg.router.ssid, CONFIG_MESH_ROUTER_SSID, cfg.router.ssid_len);
    FUNC16((uint8_t *) &cfg.router.password, CONFIG_MESH_ROUTER_PASSWD,
           FUNC19(CONFIG_MESH_ROUTER_PASSWD));
    /* mesh softAP */
    FUNC0(FUNC8(CONFIG_MESH_AP_AUTHMODE));
    cfg.mesh_ap.max_connection = CONFIG_MESH_AP_CONNECTIONS;
    FUNC16((uint8_t *) &cfg.mesh_ap.password, CONFIG_MESH_AP_PASSWD,
           FUNC19(CONFIG_MESH_AP_PASSWD));
    FUNC0(FUNC9(&cfg));
    /* mesh start */
    FUNC0(FUNC10());
    FUNC1(MESH_TAG, "mesh starts successfully, heap:%d\n",  FUNC6());
}