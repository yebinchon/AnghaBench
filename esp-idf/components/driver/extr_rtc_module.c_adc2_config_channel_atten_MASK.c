#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int adc_atten_t ;
typedef  int adc2_channel_t ;
struct TYPE_2__ {int sar_atten2; } ;

/* Variables and functions */
 int ADC2_CHANNEL_MAX ; 
 int ADC_ATTEN_11db ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ SENS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  adc2_spinlock ; 
 int /*<<< orphan*/  adc2_wifi_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

esp_err_t FUNC6(adc2_channel_t channel, adc_atten_t atten)
{
    FUNC0(channel < ADC2_CHANNEL_MAX, "ADC2 Channel Err", ESP_ERR_INVALID_ARG);
    FUNC0(atten <= ADC_ATTEN_11db, "ADC2 Atten Err", ESP_ERR_INVALID_ARG);

    FUNC3(channel);
    FUNC4( &adc2_spinlock );

    //lazy initialization
    //avoid collision with other tasks
    if ( FUNC2( &adc2_wifi_lock ) == -1 ) {
        //try the lock, return if failed (wifi using).
        FUNC5( &adc2_spinlock );
        return ESP_ERR_TIMEOUT;
    }
    SENS.sar_atten2 = ( SENS.sar_atten2 & ~(3<<(channel*2)) ) | ((atten&3) << (channel*2));
    FUNC1( &adc2_wifi_lock );

    FUNC5( &adc2_spinlock );
    return ESP_OK;
}