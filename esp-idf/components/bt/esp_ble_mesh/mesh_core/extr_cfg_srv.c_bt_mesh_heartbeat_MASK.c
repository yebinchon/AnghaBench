#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
typedef  scalar_t__ u16_t ;
struct TYPE_2__ {scalar_t__ src; scalar_t__ dst; scalar_t__ expiry; int count; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  max_hops; int /*<<< orphan*/  min_hops; } ;
struct bt_mesh_cfg_srv {TYPE_1__ hb_sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bt_mesh_cfg_srv* conf ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(u16_t src, u16_t dst, u8_t hops, u16_t feat)
{
    struct bt_mesh_cfg_srv *cfg = conf;

    if (!cfg) {
        FUNC1("No configuaration server context available");
        return;
    }

    if (src != cfg->hb_sub.src || dst != cfg->hb_sub.dst) {
        FUNC1("No subscription for received heartbeat");
        return;
    }

    if (FUNC4() > cfg->hb_sub.expiry) {
        FUNC1("Heartbeat subscription period expired");
        return;
    }

    cfg->hb_sub.min_hops = FUNC3(cfg->hb_sub.min_hops, hops);
    cfg->hb_sub.max_hops = FUNC2(cfg->hb_sub.max_hops, hops);

    if (cfg->hb_sub.count < 0xffff) {
        cfg->hb_sub.count++;
    }

    FUNC0("src 0x%04x dst 0x%04x hops %u min %u max %u count %u", src,
           dst, hops, cfg->hb_sub.min_hops, cfg->hb_sub.max_hops,
           cfg->hb_sub.count);

    if (cfg->hb_sub.func) {
        cfg->hb_sub.func(hops, feat);
    }
}