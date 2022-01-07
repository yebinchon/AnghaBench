
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




const char *SSL_rstate_string_long(SSL *ssl)
{
    const char *str = "unknown";

    SSL_ASSERT2(ssl);

    switch (ssl->rlayer.rstate)
    {
        case 128:
            str = "read header";
            break;
        case 130:
            str = "read body";
            break;
        case 129:
            str = "read done";
            break;
        default:
            break;
    }

    return str;
}
