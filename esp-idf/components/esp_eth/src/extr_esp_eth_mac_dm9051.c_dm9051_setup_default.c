
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;
typedef int emac_dm9051_t ;


 int ATCR_AUTO_TX ;
 int DM9051_ATCR ;
 int DM9051_BPTR ;
 int DM9051_FCR ;
 int DM9051_FCTR ;
 int DM9051_INTCKCR ;
 int DM9051_INTCR ;
 int DM9051_ISR ;
 int DM9051_MEMSCR ;
 int DM9051_MPTRCR ;
 int DM9051_NCR ;
 int DM9051_NSR ;
 int DM9051_RCR ;
 int DM9051_RCSCSR ;
 int DM9051_RLENCR ;
 int DM9051_TCR ;
 int DM9051_TCR2 ;
 int DM9051_TCSCR ;
 int DM9051_WCR ;
 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int FCR_FLOW_ENABLE ;
 int ISR_CLR_STATUS ;
 int MAC_CHECK (int,char*,int ,int ) ;
 int MPTRCR_RST_RX ;
 int MPTRCR_RST_TX ;
 int NSR_TX1END ;
 int NSR_TX2END ;
 int NSR_WAKEST ;
 int RCR_DIS_CRC ;
 int RCR_DIS_LONG ;
 int TCR2_RLCP ;
 int TCSCR_IPCSE ;
 int TCSCR_TCPCSE ;
 int TCSCR_UDPCSE ;
 scalar_t__ dm9051_register_write (int *,int ,int) ;
 int err ;

__attribute__((used)) static esp_err_t dm9051_setup_default(emac_dm9051_t *emac)
{
    esp_err_t ret = ESP_OK;

    MAC_CHECK(dm9051_register_write(emac, DM9051_NCR, 0x00) == ESP_OK, "write NCR failed", err, ESP_FAIL);
    MAC_CHECK(dm9051_register_write(emac, DM9051_WCR, 0x00) == ESP_OK, "write WCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_TCR, 0x00) == ESP_OK, "write TCR failed", err, ESP_FAIL);


    MAC_CHECK(dm9051_register_write(emac, DM9051_RCR, RCR_DIS_LONG | RCR_DIS_CRC) == ESP_OK, "write RCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_BPTR, 0x3F) == ESP_OK, "write BPTR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_FCTR, 0x38) == ESP_OK, "write FCTR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_FCR, FCR_FLOW_ENABLE) == ESP_OK, "write FCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_TCR2, TCR2_RLCP) == ESP_OK, "write TCR2 failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_ATCR, ATCR_AUTO_TX) == ESP_OK, "write ATCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_TCSCR, TCSCR_IPCSE | TCSCR_TCPCSE | TCSCR_UDPCSE) == ESP_OK,
              "write TCSCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_RCSCSR, 0x00) == ESP_OK, "write RCSCSR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_INTCR, 0x00) == ESP_OK, "write INTCR failed", err, ESP_FAIL);
    MAC_CHECK(dm9051_register_write(emac, DM9051_INTCKCR, 0x00) == ESP_OK, "write INTCKCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_RLENCR, 0x00) == ESP_OK, "write RLENCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_MEMSCR, 0x00) == ESP_OK, "write MEMSCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_MPTRCR, MPTRCR_RST_RX | MPTRCR_RST_TX) == ESP_OK,
              "write MPTRCR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_NSR, NSR_WAKEST | NSR_TX2END | NSR_TX1END) == ESP_OK, "write NSR failed", err, ESP_FAIL);

    MAC_CHECK(dm9051_register_write(emac, DM9051_ISR, ISR_CLR_STATUS) == ESP_OK, "write ISR failed", err, ESP_FAIL);
    return ESP_OK;
err:
    return ret;
}
