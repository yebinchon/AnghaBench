
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wps_device_data {scalar_t__ p2p; int config_methods; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_request_type { ____Placeholder_wps_request_type } wps_request_type ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPS_CFG_NO_ERROR ;
 int WPS_REQ_ENROLLEE ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_assoc_state (int *,struct wpabuf*) ;
 scalar_t__ wps_build_config_error (struct wpabuf*,int ) ;
 scalar_t__ wps_build_config_methods (struct wpabuf*,int ) ;
 scalar_t__ wps_build_dev_name (struct wps_device_data*,struct wpabuf*) ;
 scalar_t__ wps_build_dev_password_id (struct wpabuf*,int ) ;
 scalar_t__ wps_build_manufacturer (struct wps_device_data*,struct wpabuf*) ;
 scalar_t__ wps_build_model_name (struct wps_device_data*,struct wpabuf*) ;
 scalar_t__ wps_build_model_number (struct wps_device_data*,struct wpabuf*) ;
 scalar_t__ wps_build_primary_dev_type (struct wps_device_data*,struct wpabuf*) ;
 scalar_t__ wps_build_req_dev_type (struct wps_device_data*,struct wpabuf*,unsigned int,int const*) ;
 scalar_t__ wps_build_req_type (struct wpabuf*,int) ;
 scalar_t__ wps_build_rf_bands (struct wps_device_data*,struct wpabuf*) ;
 scalar_t__ wps_build_secondary_dev_type (struct wps_device_data*,struct wpabuf*) ;
 scalar_t__ wps_build_uuid_e (struct wpabuf*,int const*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int,int *,int ) ;
 struct wpabuf* wps_ie_encapsulate (struct wpabuf*) ;

struct wpabuf * wps_build_probe_req_ie(u16 pw_id, struct wps_device_data *dev,
                       const u8 *uuid,
                       enum wps_request_type req_type,
                       unsigned int num_req_dev_types,
                       const u8 *req_dev_types)
{
    struct wpabuf *ie;

    wpa_printf(MSG_DEBUG, "WPS: Building WPS IE for Probe Request\n");

    ie = wpabuf_alloc(400);
    if (ie == ((void*)0)) {
        wpa_printf(MSG_ERROR, "WPS: ie alloc failed.");
        return ((void*)0);
    }

    if (wps_build_version(ie) ||
        wps_build_req_type(ie, req_type) ||
        wps_build_config_methods(ie, dev->config_methods) ||
        wps_build_uuid_e(ie, uuid) ||
        wps_build_primary_dev_type(dev, ie) ||
        wps_build_rf_bands(dev, ie) ||
        wps_build_assoc_state(((void*)0), ie) ||
        wps_build_config_error(ie, WPS_CFG_NO_ERROR) ||
        wps_build_dev_password_id(ie, pw_id) ||







        wps_build_req_dev_type(dev, ie, num_req_dev_types, req_dev_types)
        ||
        wps_build_secondary_dev_type(dev, ie)
        ) {
        wpabuf_free(ie);
        return ((void*)0);
    }


    if (dev->p2p && wps_build_dev_name(dev, ie)) {
        wpabuf_free(ie);
        return ((void*)0);
    }


    return wps_ie_encapsulate(ie);
}
