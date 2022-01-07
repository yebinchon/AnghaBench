
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int bt_aa_snk_data_cb (int const*,int ) ;

__attribute__((used)) static inline void btc_a2d_data_cb_to_app(const uint8_t *data, uint32_t len)
{

    if (bt_aa_snk_data_cb) {
        bt_aa_snk_data_cb(data, len);
    }
}
