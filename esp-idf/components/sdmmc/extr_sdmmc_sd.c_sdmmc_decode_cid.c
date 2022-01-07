
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sdmmc_response_t ;
struct TYPE_3__ {int date; int serial; int revision; int name; int oem_id; int mfg_id; } ;
typedef TYPE_1__ sdmmc_cid_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int SD_CID_MDT (int ) ;
 int SD_CID_MID (int ) ;
 int SD_CID_OID (int ) ;
 int SD_CID_PNM_CPY (int ,int ) ;
 int SD_CID_PSN (int ) ;
 int SD_CID_REV (int ) ;

esp_err_t sdmmc_decode_cid(sdmmc_response_t resp, sdmmc_cid_t* out_cid)
{
    out_cid->mfg_id = SD_CID_MID(resp);
    out_cid->oem_id = SD_CID_OID(resp);
    SD_CID_PNM_CPY(resp, out_cid->name);
    out_cid->revision = SD_CID_REV(resp);
    out_cid->serial = SD_CID_PSN(resp);
    out_cid->date = SD_CID_MDT(resp);
    return ESP_OK;
}
