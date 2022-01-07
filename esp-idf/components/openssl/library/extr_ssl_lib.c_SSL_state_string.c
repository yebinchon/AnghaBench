
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;




 int SSL_ASSERT2 (int const*) ;
 int SSL_get_state (int const*) ;
 scalar_t__ ossl_statem_in_error (int const*) ;

const char *SSL_state_string(const SSL *ssl)
{
    const char *str = "UNKWN ";

    SSL_ASSERT2(ssl);

    if (ossl_statem_in_error(ssl))
        str = "SSLERR";
    else
    {
        switch (SSL_get_state(ssl))
        {
            case 156:
                str = "PINIT ";
                break;
            case 142:
                str = "SSLOK ";
                break;
            case 145:
                str = "TWCH";
                break;
            case 149:
                str = "TRSH";
                break;
            case 155:
                str = "TRSC";
                break;
            case 151:
                str = "TRSKE";
                break;
            case 154:
                str = "TRCR";
                break;
            case 150:
                str = "TRSD";
                break;
            case 148:
                str = "TWCC";
                break;
            case 143:
                str = "TWCKE";
                break;
            case 147:
                str = "TWCV";
                break;
            case 133:
            case 146:
                str = "TWCCS";
                break;
            case 132:
            case 144:
                str = "TWFIN";
                break;
            case 139:
            case 153:
                str = "TRCCS";
                break;
            case 137:
            case 152:
                str = "TRFIN";
                break;
            case 131:
                str = "TWHR";
                break;
            case 138:
                str = "TRCH";
                break;
            case 128:
                str = "TWSH";
                break;
            case 135:
                str = "TWSC";
                break;
            case 130:
                str = "TWSKE";
                break;
            case 134:
                str = "TWCR";
                break;
            case 129:
                str = "TWSD";
                break;
            case 141:
                str = "TRCC";
                break;
            case 136:
                str = "TRCKE";
                break;
            case 140:
                str = "TRCV";
                break;
            case 158:
                str = "DRCHV";
                break;
            case 157:
                str = "DWCHV";
                break;
            default:
                break;
        }
    }

    return str;
}
