
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int RTMP_HANDSHAKE_PACKET_SIZE ;
 int SERVER_KEY_OPEN_PART_LEN ;
 int ff_rtmp_calc_digest (int *,int ,int,int ,int ,int *) ;
 int ff_rtmp_calc_digest_pos (int *,int,int,int) ;
 int memcmp (int *,int *,int) ;
 int rtmp_server_key ;

__attribute__((used)) static int rtmp_validate_digest(uint8_t *buf, int off)
{
    uint8_t digest[32];
    int ret, digest_pos;

    digest_pos = ff_rtmp_calc_digest_pos(buf, off, 728, off + 4);

    ret = ff_rtmp_calc_digest(buf, RTMP_HANDSHAKE_PACKET_SIZE, digest_pos,
                              rtmp_server_key, SERVER_KEY_OPEN_PART_LEN,
                              digest);
    if (ret < 0)
        return ret;

    if (!memcmp(digest, buf + digest_pos, 32))
        return digest_pos;
    return 0;
}
