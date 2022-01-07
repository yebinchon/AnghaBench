
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;




 int SSL_ASSERT2 (int const*) ;
 int SSL_get_state (int const*) ;
 scalar_t__ ossl_statem_in_error (int const*) ;

const char *SSL_state_string_long(const SSL *ssl)
{
    const char *str = "UNKWN ";

    SSL_ASSERT2(ssl);

    if (ossl_statem_in_error(ssl))
        str = "SSLERR";
    else
    {
        switch (SSL_get_state(ssl))
        {
            case 158:
                str = "before SSL initialization";
                break;
            case 143:
                str = "SSL negotiation finished successfully";
                break;
            case 146:
                str = "SSLv3/TLS write client hello";
                break;
            case 150:
                str = "SSLv3/TLS read server hello";
                break;
            case 157:
                str = "SSLv3/TLS read server certificate";
                break;
            case 153:
                str = "SSLv3/TLS read server key exchange";
                break;
            case 156:
                str = "SSLv3/TLS read server certificate request";
                break;
            case 152:
                str = "SSLv3/TLS read server session ticket";
                break;
            case 151:
                str = "SSLv3/TLS read server done";
                break;
            case 149:
                str = "SSLv3/TLS write client certificate";
                break;
            case 144:
                str = "SSLv3/TLS write client key exchange";
                break;
            case 148:
                str = "SSLv3/TLS write certificate verify";
                break;
            case 147:
            case 134:
                str = "SSLv3/TLS write change cipher spec";
                break;
            case 145:
            case 133:
                str = "SSLv3/TLS write finished";
                break;
            case 155:
            case 140:
                str = "SSLv3/TLS read change cipher spec";
                break;
            case 154:
            case 138:
                str = "SSLv3/TLS read finished";
                break;
            case 139:
                str = "SSLv3/TLS read client hello";
                break;
            case 132:
                str = "SSLv3/TLS write hello request";
                break;
            case 128:
                str = "SSLv3/TLS write server hello";
                break;
            case 136:
                str = "SSLv3/TLS write certificate";
                break;
            case 131:
                str = "SSLv3/TLS write key exchange";
                break;
            case 135:
                str = "SSLv3/TLS write certificate request";
                break;
            case 130:
                str = "SSLv3/TLS write session ticket";
                break;
            case 129:
                str = "SSLv3/TLS write server done";
                break;
            case 142:
                str = "SSLv3/TLS read client certificate";
                break;
            case 137:
                str = "SSLv3/TLS read client key exchange";
                break;
            case 141:
                str = "SSLv3/TLS read certificate verify";
                break;
            case 160:
                str = "DTLS1 read hello verify request";
                break;
            case 159:
                str = "DTLS1 write hello verify request";
                break;
            default:
                break;
        }
    }

    return str;
}
