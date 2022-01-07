
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t CONFIG_ETH_SMI_MDC_GPIO ;
 size_t CONFIG_ETH_SMI_MDIO_GPIO ;
 int EMAC_MDC_O_IDX ;
 int EMAC_MDI_I_IDX ;
 int EMAC_MDO_O_IDX ;
 int GPIO_MODE_INPUT_OUTPUT ;
 int GPIO_MODE_OUTPUT ;
 int * GPIO_PIN_MUX_REG ;
 int PIN_FUNC_GPIO ;
 int PIN_FUNC_SELECT (int ,int ) ;
 int gpio_matrix_in (size_t,int ,int) ;
 int gpio_matrix_out (size_t,int ,int,int) ;
 int gpio_set_direction (size_t,int ) ;

__attribute__((used)) static void emac_esp32_init_smi_gpio(void)
{

    gpio_set_direction(CONFIG_ETH_SMI_MDC_GPIO, GPIO_MODE_OUTPUT);
    gpio_matrix_out(CONFIG_ETH_SMI_MDC_GPIO, EMAC_MDC_O_IDX, 0, 0);
    PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[CONFIG_ETH_SMI_MDC_GPIO], PIN_FUNC_GPIO);

    gpio_set_direction(CONFIG_ETH_SMI_MDIO_GPIO, GPIO_MODE_INPUT_OUTPUT);
    gpio_matrix_out(CONFIG_ETH_SMI_MDIO_GPIO, EMAC_MDO_O_IDX, 0, 0);
    gpio_matrix_in(CONFIG_ETH_SMI_MDIO_GPIO, EMAC_MDI_I_IDX, 0);
    PIN_FUNC_SELECT(GPIO_PIN_MUX_REG[CONFIG_ETH_SMI_MDIO_GPIO], PIN_FUNC_GPIO);
}
