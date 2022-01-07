
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int cJSON ;
struct TYPE_4__ {scalar_t__ no_pop; scalar_t__ no_sec; } ;
struct TYPE_5__ {TYPE_1__ capabilities; int version; } ;
struct TYPE_6__ {TYPE_2__ mgr_info; scalar_t__ app_info_json; } ;


 int cJSON_AddItemToArray (int *,int ) ;
 int cJSON_AddItemToObject (int *,char*,int *) ;
 int cJSON_AddStringToObject (int *,char*,int ) ;
 int * cJSON_CreateArray () ;
 int * cJSON_CreateObject () ;
 int cJSON_CreateString (char*) ;
 int * cJSON_Duplicate (scalar_t__,int) ;
 TYPE_3__* prov_ctx ;

__attribute__((used)) static cJSON* wifi_prov_get_info_json(void)
{
    cJSON *full_info_json = prov_ctx->app_info_json ?
                                cJSON_Duplicate(prov_ctx->app_info_json, 1) : cJSON_CreateObject();
    cJSON *prov_info_json = cJSON_CreateObject();
    cJSON *prov_capabilities = cJSON_CreateArray();


    cJSON_AddItemToObject(full_info_json, "prov", prov_info_json);


    cJSON_AddStringToObject(prov_info_json, "ver", prov_ctx->mgr_info.version);


    cJSON_AddItemToObject(prov_info_json, "cap", prov_capabilities);


    if (prov_ctx->mgr_info.capabilities.no_sec) {
        cJSON_AddItemToArray(prov_capabilities, cJSON_CreateString("no_sec"));
    } else if (prov_ctx->mgr_info.capabilities.no_pop) {
        cJSON_AddItemToArray(prov_capabilities, cJSON_CreateString("no_pop"));
    }


    cJSON_AddItemToArray(prov_capabilities, cJSON_CreateString("wifi_scan"));
    return full_info_json;
}
