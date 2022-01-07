
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rstate; } ;
struct TYPE_6__ {TYPE_1__ rlayer; } ;
typedef TYPE_2__ SSL ;


 int SSL_ASSERT2 (TYPE_2__*) ;




const char *SSL_rstate_string(SSL *ssl)
{
    const char *str;

    SSL_ASSERT2(ssl);

    switch (ssl->rlayer.rstate)
    {
        case 128:
            str = "RH";
            break;
        case 130:
            str = "RB";
            break;
        case 129:
            str = "RD";
            break;
        default:
            str = "unknown";
            break;
    }

    return str;
}
