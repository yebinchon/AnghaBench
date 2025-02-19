
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_16__ {int data; } ;
struct TYPE_15__ {int pkey; } ;
struct TYPE_27__ {int pkey; } ;
struct TYPE_26__ {int cert; } ;
struct TYPE_25__ {int cert; } ;
struct TYPE_24__ {int cert; } ;
struct TYPE_23__ {int name; } ;
struct TYPE_22__ {int passwd; } ;
struct TYPE_21__ {int ssid; } ;
struct TYPE_20__ {int passwd; } ;
struct TYPE_19__ {int ssid; } ;
struct TYPE_17__ {TYPE_11__ custom_data; TYPE_10__ server_pkey; TYPE_9__ client_pkey; TYPE_8__ server_cert; TYPE_7__ client_cert; TYPE_6__ ca; TYPE_5__ username; TYPE_4__ softap_passwd; TYPE_3__ softap_ssid; TYPE_2__ sta_passwd; TYPE_1__ sta_ssid; } ;
typedef TYPE_12__ esp_blufi_cb_param_t ;
struct TYPE_18__ {int act; scalar_t__ arg; } ;
typedef TYPE_13__ btc_msg_t ;
 int osi_free (int ) ;

void btc_blufi_cb_deep_free(btc_msg_t *msg)
{
    esp_blufi_cb_param_t *param = (esp_blufi_cb_param_t *)msg->arg;

    switch (msg->act) {
    case 129:
        osi_free(param->sta_ssid.ssid);
        break;
    case 130:
        osi_free(param->sta_passwd.passwd);
        break;
    case 131:
        osi_free(param->softap_ssid.ssid);
        break;
    case 132:
        osi_free(param->softap_passwd.passwd);
        break;
    case 128:
        osi_free(param->username.name);
        break;
    case 138:
        osi_free(param->ca.cert);
        break;
    case 137:
        osi_free(param->client_cert.cert);
        break;
    case 134:
        osi_free(param->server_cert.cert);
        break;
    case 136:
        osi_free(param->client_pkey.pkey);
        break;
    case 133:
        osi_free(param->server_pkey.pkey);
        break;
    case 135:
        osi_free(param->custom_data.data);
        break;
    default:
        break;
    }
}
