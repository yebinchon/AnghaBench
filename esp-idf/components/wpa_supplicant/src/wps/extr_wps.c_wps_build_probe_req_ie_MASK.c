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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wps_device_data {scalar_t__ p2p; int /*<<< orphan*/  config_methods; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_request_type { ____Placeholder_wps_request_type } wps_request_type ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WPS_CFG_NO_ERROR ; 
 int WPS_REQ_ENROLLEE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC7 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC9 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC10 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC11 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC12 (struct wps_device_data*,struct wpabuf*,unsigned int,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC13 (struct wpabuf*,int) ; 
 scalar_t__ FUNC14 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC15 (struct wps_device_data*,struct wpabuf*) ; 
 scalar_t__ FUNC16 (struct wpabuf*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC17 (struct wpabuf*) ; 
 scalar_t__ FUNC18 (struct wpabuf*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC19 (struct wpabuf*) ; 

struct wpabuf * FUNC20(u16 pw_id, struct wps_device_data *dev,
                       const u8 *uuid,
                       enum wps_request_type req_type,
                       unsigned int num_req_dev_types,
                       const u8 *req_dev_types)
{
    struct wpabuf *ie;

    FUNC0(MSG_DEBUG,  "WPS: Building WPS IE for Probe Request\n");

    ie = FUNC1(400);
    if (ie == NULL) {
        FUNC0(MSG_ERROR, "WPS: ie alloc failed.");
        return NULL;
    }

    if (FUNC17(ie) ||
        FUNC13(ie, req_type) ||
        FUNC5(ie, dev->config_methods) ||
        FUNC16(ie, uuid) ||
        FUNC11(dev, ie) ||
        FUNC14(dev, ie) ||
        FUNC3(NULL, ie) ||
        FUNC4(ie, WPS_CFG_NO_ERROR) ||
        FUNC7(ie, pw_id) ||
#ifdef CONFIG_WPS2
        wps_build_manufacturer(dev, ie) ||
        wps_build_model_name(dev, ie) ||
        wps_build_model_number(dev, ie) ||
        wps_build_dev_name(dev, ie) ||
        wps_build_wfa_ext(ie, req_type == WPS_REQ_ENROLLEE, NULL, 0) ||
#endif /* CONFIG_WPS2 */
        FUNC12(dev, ie, num_req_dev_types, req_dev_types)
        ||
        FUNC15(dev, ie)
        ) {
        FUNC2(ie);
        return NULL;
    }

#ifndef CONFIG_WPS2
    if (dev->p2p && FUNC6(dev, ie)) {
        FUNC2(ie);
        return NULL;
    }
#endif /* CONFIG_WPS2 */

    return FUNC19(ie);
}