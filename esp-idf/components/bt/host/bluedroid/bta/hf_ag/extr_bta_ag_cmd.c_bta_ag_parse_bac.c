
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_AG_SCB ;
typedef int tBTA_AG_PEER_CODEC ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;


 int APPL_TRACE_ERROR (char*,int) ;
 int BTA_AG_CODEC_CVSD ;
 int BTA_AG_CODEC_MSBC ;
 int BTA_AG_CODEC_NONE ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;


 int utl_str2int (char*) ;

__attribute__((used)) static tBTA_AG_PEER_CODEC bta_ag_parse_bac(tBTA_AG_SCB *p_scb, char *p_s)
{
    tBTA_AG_PEER_CODEC retval = BTA_AG_CODEC_NONE;
    UINT16 uuid_codec;
    BOOLEAN cont = FALSE;
    char *p;

    while (p_s) {

        for (p = p_s; *p != ',' && *p != 0; p++);


        if (*p != 0) {
            *p = 0;
            cont = TRUE;
        } else {
            cont = FALSE;
        }
        uuid_codec = utl_str2int(p_s);
        switch(uuid_codec) {
            case 129:
                retval |= BTA_AG_CODEC_CVSD;
                break;

            case 128:
                retval |= BTA_AG_CODEC_MSBC;
                break;

            default:
                APPL_TRACE_ERROR("Unknown Codec UUID(%d) received", uuid_codec);
                return BTA_AG_CODEC_NONE;
        }
        if (cont) {
            p_s = p + 1;
        }
        else {
            break;
        }
    }
    return (retval);
}
