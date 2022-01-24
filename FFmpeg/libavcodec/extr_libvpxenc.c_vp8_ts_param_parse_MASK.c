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
struct vpx_codec_enc_cfg {int /*<<< orphan*/  ts_layer_id; void* ts_periodicity; int /*<<< orphan*/  ts_rate_decimator; int /*<<< orphan*/  ts_target_bitrate; void* ts_number_layers; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPX_TS_MAX_LAYERS ; 
 int /*<<< orphan*/  VPX_TS_MAX_PERIODICITY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 size_t FUNC1 (char*) ; 
 void* FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct vpx_codec_enc_cfg *enccfg, char *key, char *value)
{
    size_t value_len = FUNC1(value);

    if (!value_len)
        return -1;

    if (!FUNC0(key, "ts_number_layers"))
        enccfg->ts_number_layers = FUNC2(value, &value, 10);
    else if (!FUNC0(key, "ts_target_bitrate"))
        FUNC3(enccfg->ts_target_bitrate, value, value_len, VPX_TS_MAX_LAYERS);
    else if (!FUNC0(key, "ts_rate_decimator"))
      FUNC3(enccfg->ts_rate_decimator, value, value_len, VPX_TS_MAX_LAYERS);
    else if (!FUNC0(key, "ts_periodicity"))
        enccfg->ts_periodicity = FUNC2(value, &value, 10);
    else if (!FUNC0(key, "ts_layer_id"))
        FUNC3(enccfg->ts_layer_id, value, value_len, VPX_TS_MAX_PERIODICITY);

    return 0;
}