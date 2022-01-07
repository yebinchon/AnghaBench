
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; } ;
struct ssl_pm {TYPE_1__ ssl; } ;
struct TYPE_5__ {scalar_t__ ssl_pm; } ;
typedef TYPE_2__ SSL ;
typedef int OSSL_HANDSHAKE_STATE ;
 int TLS_ST_BEFORE ;
 int TLS_ST_CW_CERT ;
 int TLS_ST_CW_CHANGE ;
 int TLS_ST_CW_CLNT_HELLO ;
 int TLS_ST_CW_FINISHED ;
 int TLS_ST_CW_KEY_EXCH ;
 int TLS_ST_OK ;
 int TLS_ST_SR_KEY_EXCH ;
 int TLS_ST_SW_CERT ;
 int TLS_ST_SW_CERT_REQ ;
 int TLS_ST_SW_CHANGE ;
 int TLS_ST_SW_FINISHED ;
 int TLS_ST_SW_SESSION_TICKET ;
 int TLS_ST_SW_SRVR_DONE ;
 int TLS_ST_SW_SRVR_HELLO ;

OSSL_HANDSHAKE_STATE ssl_pm_get_state(const SSL *ssl)
{
    OSSL_HANDSHAKE_STATE state;

    struct ssl_pm *ssl_pm = (struct ssl_pm *)ssl->ssl_pm;

    switch (ssl_pm->ssl.state)
    {
        case 138:
            state = TLS_ST_CW_CLNT_HELLO;
            break;
        case 132:
            state = TLS_ST_SW_SRVR_HELLO;
            break;
        case 135:
            state = TLS_ST_SW_CERT;
            break;
        case 131:
            state = TLS_ST_SW_SRVR_DONE;
            break;
        case 137:
            state = TLS_ST_CW_KEY_EXCH;
            break;
        case 140:
            state = TLS_ST_CW_CHANGE;
            break;
        case 139:
            state = TLS_ST_CW_FINISHED;
            break;
        case 134:
            state = TLS_ST_SW_CHANGE;
            break;
        case 133:
            state = TLS_ST_SW_FINISHED;
            break;
        case 141:
            state = TLS_ST_CW_CERT;
            break;
        case 129:
            state = TLS_ST_SR_KEY_EXCH;
            break;
        case 128:
            state = TLS_ST_SW_SESSION_TICKET;
            break;
        case 130:
            state = TLS_ST_SW_CERT_REQ;
            break;
        case 136:
            state = TLS_ST_OK;
            break;
        default :
            state = TLS_ST_BEFORE;
            break;
    }

    return state;
}
