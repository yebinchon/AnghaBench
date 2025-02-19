
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ link_status; int addr; TYPE_2__* eth; } ;
typedef TYPE_1__ phy_rtl8201_t ;
typedef scalar_t__ eth_speed_t ;
typedef scalar_t__ eth_link_t ;
typedef scalar_t__ eth_duplex_t ;
struct TYPE_13__ {scalar_t__ (* phy_reg_read ) (TYPE_2__*,int ,int ,int *) ;scalar_t__ (* on_state_changed ) (TYPE_2__*,int ,void*) ;} ;
typedef TYPE_2__ esp_eth_mediator_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_14__ {scalar_t__ link_status; int val; } ;
typedef TYPE_3__ bmsr_reg_t ;
struct TYPE_15__ {scalar_t__ duplex_mode; scalar_t__ speed_select; int val; } ;
typedef TYPE_4__ bmcr_reg_t ;


 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_OK ;
 scalar_t__ ETH_DUPLEX_FULL ;
 scalar_t__ ETH_DUPLEX_HALF ;
 scalar_t__ ETH_LINK_DOWN ;
 scalar_t__ ETH_LINK_UP ;
 int ETH_PHY_BMCR_REG_ADDR ;
 int ETH_PHY_BMSR_REG_ADDR ;
 scalar_t__ ETH_SPEED_100M ;
 scalar_t__ ETH_SPEED_10M ;
 int ETH_STATE_DUPLEX ;
 int ETH_STATE_LINK ;
 int ETH_STATE_SPEED ;
 int PHY_CHECK (int,char*,int ) ;
 int err ;
 scalar_t__ rtl8201_page_select (TYPE_1__*,int ) ;
 scalar_t__ stub1 (TYPE_2__*,int ,int ,int *) ;
 scalar_t__ stub2 (TYPE_2__*,int ,int ,int *) ;
 scalar_t__ stub3 (TYPE_2__*,int ,void*) ;
 scalar_t__ stub4 (TYPE_2__*,int ,void*) ;
 scalar_t__ stub5 (TYPE_2__*,int ,void*) ;

__attribute__((used)) static esp_err_t rtl8201_update_link_duplex_speed(phy_rtl8201_t *rtl8201)
{
    esp_eth_mediator_t *eth = rtl8201->eth;
    eth_speed_t speed = ETH_SPEED_10M;
    eth_duplex_t duplex = ETH_DUPLEX_HALF;
    bmcr_reg_t bmcr;
    bmsr_reg_t bmsr;
    PHY_CHECK(rtl8201_page_select(rtl8201, 0) == ESP_OK, "select page 0 failed", err);
    PHY_CHECK(eth->phy_reg_read(eth, rtl8201->addr, ETH_PHY_BMSR_REG_ADDR, &(bmsr.val)) == ESP_OK,
              "read BMSR failed", err);
    eth_link_t link = bmsr.link_status ? ETH_LINK_UP : ETH_LINK_DOWN;

    if (rtl8201->link_status != link) {

        if (link == ETH_LINK_UP) {
            PHY_CHECK(eth->phy_reg_read(eth, rtl8201->addr, ETH_PHY_BMCR_REG_ADDR, &(bmcr.val)) == ESP_OK,
                      "read BMCR failed", err);
            if (bmcr.speed_select) {
                speed = ETH_SPEED_100M;
            } else {
                speed = ETH_SPEED_10M;
            }
            if (bmcr.duplex_mode) {
                duplex = ETH_DUPLEX_FULL;
            } else {
                duplex = ETH_DUPLEX_HALF;
            }
            PHY_CHECK(eth->on_state_changed(eth, ETH_STATE_SPEED, (void *)speed) == ESP_OK,
                      "change speed failed", err);
            PHY_CHECK(eth->on_state_changed(eth, ETH_STATE_DUPLEX, (void *)duplex) == ESP_OK,
                      "change duplex failed", err);
        }
        PHY_CHECK(eth->on_state_changed(eth, ETH_STATE_LINK, (void *)link) == ESP_OK,
                  "change link failed", err);
        rtl8201->link_status = link;
    }
    return ESP_OK;
err:
    return ESP_FAIL;
}
