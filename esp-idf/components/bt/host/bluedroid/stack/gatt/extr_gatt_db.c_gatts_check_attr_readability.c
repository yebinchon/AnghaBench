
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tGATT_STATUS ;
typedef int tGATT_SEC_FLAG ;
typedef int tGATT_PERM ;
struct TYPE_3__ {int permission; int uuid; } ;
typedef TYPE_1__ tGATT_ATTR16 ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;


 int BTM_SEC_FLAG_ENCRYPTED ;
 int GATT_ENCRYPT_KEY_SIZE_MASK ;
 int GATT_INSUF_AUTHENTICATION ;
 int GATT_INSUF_ENCRYPTION ;
 int GATT_INSUF_KEY_SIZE ;
 int GATT_NOT_LONG ;
 int GATT_READ_ALLOWED ;
 int GATT_READ_AUTH_REQUIRED ;
 int GATT_READ_ENCRYPTED_REQUIRED ;
 int GATT_READ_MITM_REQUIRED ;
 int GATT_READ_NOT_PERMIT ;
 int GATT_SEC_FLAG_ENCRYPTED ;
 int GATT_SEC_FLAG_LKEY_AUTHED ;
 int GATT_SEC_FLAG_LKEY_UNAUTHED ;
 int GATT_SUCCESS ;
 int GATT_TRACE_ERROR (char*) ;
 int UNUSED (int) ;

__attribute__((used)) static tGATT_STATUS gatts_check_attr_readability(tGATT_ATTR16 *p_attr,
        UINT16 offset,
        BOOLEAN read_long,
        tGATT_SEC_FLAG sec_flag,
        UINT8 key_size)
{
    UINT16 min_key_size;
    tGATT_PERM perm = p_attr->permission;

    UNUSED(offset);
    min_key_size = (((perm & GATT_ENCRYPT_KEY_SIZE_MASK) >> 12));
    if (min_key_size != 0 ) {
        min_key_size += 6;
    }

    if (!(perm & GATT_READ_ALLOWED)) {
        GATT_TRACE_ERROR( "GATT_READ_NOT_PERMIT\n");
        return GATT_READ_NOT_PERMIT;
    }

    if ((perm & GATT_READ_AUTH_REQUIRED ) && !(sec_flag & GATT_SEC_FLAG_LKEY_UNAUTHED) &&
            !(sec_flag & BTM_SEC_FLAG_ENCRYPTED)) {
        GATT_TRACE_ERROR( "GATT_INSUF_AUTHENTICATION\n");
        return GATT_INSUF_AUTHENTICATION;
    }

    if ((perm & GATT_READ_MITM_REQUIRED ) && !(sec_flag & GATT_SEC_FLAG_LKEY_AUTHED)) {
        GATT_TRACE_ERROR( "GATT_INSUF_AUTHENTICATION: MITM Required\n");
        return GATT_INSUF_AUTHENTICATION;
    }

    if ((perm & GATT_READ_ENCRYPTED_REQUIRED ) && !(sec_flag & GATT_SEC_FLAG_ENCRYPTED)) {
        GATT_TRACE_ERROR( "GATT_INSUF_ENCRYPTION\n");
        return GATT_INSUF_ENCRYPTION;
    }

    if ( (perm & GATT_READ_ENCRYPTED_REQUIRED) && (sec_flag & GATT_SEC_FLAG_ENCRYPTED) && (key_size < min_key_size)) {
        GATT_TRACE_ERROR( "GATT_INSUF_KEY_SIZE\n");
        return GATT_INSUF_KEY_SIZE;
    }


    if (read_long) {
        switch (p_attr->uuid) {
        case 129:
        case 128:
        case 134:
        case 130:
        case 133:
        case 135:
        case 131:
        case 132:
            GATT_TRACE_ERROR("GATT_NOT_LONG\n");
            return GATT_NOT_LONG;

        default:
            break;
        }
    }

    return GATT_SUCCESS;
}
