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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  sdmmc_card_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1_EN_MASK ; 
 int /*<<< orphan*/  SD_IO_CCCR_CARD_CAP ; 
 int /*<<< orphan*/  SD_IO_CCCR_FN_ENABLE ; 
 int /*<<< orphan*/  SD_IO_CCCR_FN_READY ; 
 int /*<<< orphan*/  SD_IO_CCCR_HIGHSPEED ; 
 int /*<<< orphan*/  SD_IO_CCCR_INT_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(sdmmc_card_t* card)
{
    uint8_t card_cap;
    esp_err_t err = FUNC3(card, 0, SD_IO_CCCR_CARD_CAP, &card_cap);
    FUNC1(err);
    FUNC2("CAP: 0x%02x\n", card_cap);

    uint8_t hs;
    err = FUNC3(card, 0, SD_IO_CCCR_HIGHSPEED, &hs);
    FUNC1(err);
    FUNC2("HS: 0x%02x\n", hs);


#define FUNC1_EN_MASK   (BIT(1))

    uint8_t ioe;
    err = FUNC3(card, 0, SD_IO_CCCR_FN_ENABLE, &ioe);
    FUNC1(err);
    FUNC2("IOE: 0x%02x\n", ioe);

    uint8_t ior = 0;
    err = FUNC3(card, 0, SD_IO_CCCR_FN_READY, &ior);
    FUNC1(err);
    FUNC2("IOR: 0x%02x\n", ior);

    // enable function 1
    ioe |= FUNC1_EN_MASK;
    err = FUNC4(card, 0, SD_IO_CCCR_FN_ENABLE, ioe, NULL);
    FUNC1(err);

    err = FUNC3(card, 0, SD_IO_CCCR_FN_ENABLE, &ioe);
    FUNC1(err);
    FUNC2("IOE: 0x%02x\n", ioe);

    // wait for the card to become ready
    while ( (ior & FUNC1_EN_MASK) == 0 ) {
        err = FUNC3(card, 0, SD_IO_CCCR_FN_READY, &ior);
        FUNC1(err);
        FUNC2("IOR: 0x%02x\n", ior);
    }

    // get interrupt status
    uint8_t ie;
    err = FUNC3(card, 0, SD_IO_CCCR_INT_ENABLE, &ie);
    FUNC1(err);
    FUNC2("IE: 0x%02x\n", ie);

    // enable interrupts for function 1&2 and master enable
    ie |= FUNC0(0) | FUNC1_EN_MASK;
    err = FUNC4(card, 0, SD_IO_CCCR_INT_ENABLE, ie, NULL);
    FUNC1(err);

    err = FUNC3(card, 0, SD_IO_CCCR_INT_ENABLE, &ie);
    FUNC1(err);
    FUNC2("IE: 0x%02x\n", ie);
}