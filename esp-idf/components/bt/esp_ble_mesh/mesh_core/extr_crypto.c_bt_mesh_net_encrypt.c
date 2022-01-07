
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8_t ;
typedef int u32_t ;
struct net_buf_simple {int len; int const* data; } ;


 int BT_DBG (char*,int,...) ;
 int const NET_MIC_LEN (int const*) ;
 int bt_hex (int const*,int) ;
 int bt_mesh_ccm_encrypt (int const*,int const*,int const*,int,int *,int ,int const*,int const) ;
 int create_net_nonce (int const*,int const*,int ) ;
 int create_proxy_nonce (int const*,int const*,int ) ;
 int net_buf_simple_add (struct net_buf_simple*,int const) ;

int bt_mesh_net_encrypt(const u8_t key[16], struct net_buf_simple *buf,
                        u32_t iv_index, bool proxy)
{
    u8_t mic_len = NET_MIC_LEN(buf->data);
    u8_t nonce[13];
    int err;

    BT_DBG("IVIndex %u EncKey %s mic_len %u", iv_index, bt_hex(key, 16),
           mic_len);
    BT_DBG("PDU (len %u) %s", buf->len, bt_hex(buf->data, buf->len));
    create_net_nonce(nonce, buf->data, iv_index);


    BT_DBG("Nonce %s", bt_hex(nonce, 13));

    err = bt_mesh_ccm_encrypt(key, nonce, &buf->data[7], buf->len - 7,
                              ((void*)0), 0, &buf->data[7], mic_len);
    if (!err) {
        net_buf_simple_add(buf, mic_len);
    }

    return err;
}
