
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct net_buf_simple {int len; int const* data; } ;


 int APP_MIC_LEN (int const) ;
 int BT_DBG (char*,int,...) ;
 int bt_hex (int const*,int) ;
 int bt_mesh_ccm_decrypt (int const*,int const*,int const*,int,int const*,int,int const*,int ) ;
 int create_app_nonce (int const*,int,int const,int ,int ,int ,int ) ;
 int net_buf_simple_add (struct net_buf_simple*,int) ;

int bt_mesh_app_decrypt(const u8_t key[16], bool dev_key, u8_t aszmic,
                        struct net_buf_simple *buf, struct net_buf_simple *out,
                        const u8_t *ad, u16_t src, u16_t dst, u32_t seq_num,
                        u32_t iv_index)
{
    u8_t nonce[13];
    int err;

    BT_DBG("EncData (len %u) %s", buf->len, bt_hex(buf->data, buf->len));

    create_app_nonce(nonce, dev_key, aszmic, src, dst, seq_num, iv_index);

    BT_DBG("AppKey %s", bt_hex(key, 16));
    BT_DBG("Nonce  %s", bt_hex(nonce, 13));

    err = bt_mesh_ccm_decrypt(key, nonce, buf->data, buf->len, ad,
                              ad ? 16 : 0, out->data, APP_MIC_LEN(aszmic));
    if (!err) {
        net_buf_simple_add(out, buf->len);
    }

    return err;
}
