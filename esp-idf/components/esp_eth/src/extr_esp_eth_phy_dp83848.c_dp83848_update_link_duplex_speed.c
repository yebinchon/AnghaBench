
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ duplex_status; scalar_t__ speed_status; int val; } ;
typedef TYPE_1__ physts_reg_t ;
struct TYPE_12__ {scalar_t__ link_status; int addr; TYPE_3__* eth; } ;
typedef TYPE_2__ phy_dp83848_t ;
typedef scalar_t__ eth_speed_t ;
typedef scalar_t__ eth_link_t ;
typedef scalar_t__ eth_duplex_t ;
struct TYPE_13__ {scalar_t__ (* phy_reg_read ) (TYPE_3__*,int ,int ,int *) ;scalar_t__ (* on_state_changed ) (TYPE_3__*,int ,void*) ;} ;
typedef TYPE_3__ esp_eth_mediator_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_14__ {scalar_t__ link_status; int val; } ;
typedef TYPE_4__ bmsr_reg_t ;


 scalar_t__ ESP_FAIL ;
 scalar_t__ ESP_OK ;
 scalar_t__ ETH_DUPLEX_FULL ;
 scalar_t__ ETH_DUPLEX_HALF ;
 scalar_t__ ETH_LINK_DOWN ;
 scalar_t__ ETH_LINK_UP ;
 int ETH_PHY_BMSR_REG_ADDR ;
 int ETH_PHY_STS_REG_ADDR ;
 scalar_t__ ETH_SPEED_100M ;
 scalar_t__ ETH_SPEED_10M ;
 int ETH_STATE_DUPLEX ;
 int ETH_STATE_LINK ;
 int ETH_STATE_SPEED ;
 int PHY_CHECK (int,char*,int ) ;
 int err ;
 scalar_t__ stub1 (TYPE_3__*,int ,int ,int *) ;
 scalar_t__ stub2 (TYPE_3__*,int ,int ,int *) ;
 scalar_t__ stub3 (TYPE_3__*,int ,void*) ;
 scalar_t__ stub4 (TYPE_3__*,int ,void*) ;
 scalar_t__ stub5 (TYPE_3__*,int ,void*) ;

__attribute__((used)) static esp_err_t dp83848_update_link_duplex_speed(phy_dp83848_t *dp83848)
{
    esp_eth_mediator_t *eth = dp83848->eth;
    eth_speed_t speed = ETH_SPEED_10M;
    eth_duplex_t duplex = ETH_DUPLEX_HALF;
    bmsr_reg_t bmsr;
    physts_reg_t physts;
    PHY_CHECK(eth->phy_reg_read(eth, dp83848->addr, ETH_PHY_BMSR_REG_ADDR, &(bmsr.val)) == ESP_OK,
              "read BMSR failed", err);
    eth_link_t link = bmsr.link_status ? ETH_LINK_UP : ETH_LINK_DOWN;

    if (dp83848->link_status != link) {

        if (link == ETH_LINK_UP) {
            PHY_CHECK(eth->phy_reg_read(eth, dp83848->addr, ETH_PHY_STS_REG_ADDR, &(physts.val)) == ESP_OK,
                      "read PHYSTS failed", err);
            if (physts.speed_status) {
                speed = ETH_SPEED_10M;
            } else {
                speed = ETH_SPEED_100M;
            }
            if (physts.duplex_status) {
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
        dp83848->link_status = link;
    }
    return ESP_OK;
err:
    return ESP_FAIL;
}
