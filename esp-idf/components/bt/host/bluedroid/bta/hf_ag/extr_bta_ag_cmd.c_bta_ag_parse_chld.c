
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTA_AG_SCB ;
typedef scalar_t__ UINT8 ;
typedef int INT16 ;


 scalar_t__ BTA_AG_INVALID_CHLD ;
 int UNUSED (int *) ;
 int isdigit (char) ;
 int utl_str2int (char*) ;

__attribute__((used)) static UINT8 bta_ag_parse_chld(tBTA_AG_SCB *p_scb, char *p_s)
{
    UINT8 retval = 0;
    INT16 idx = -1;
    UNUSED(p_scb);

    if (!isdigit(p_s[0])) {
        return BTA_AG_INVALID_CHLD;
    }

    if (p_s[1] != 0) {

        idx = utl_str2int(&p_s[1]);
        if (idx != -1 && idx < 255) {
            retval = (UINT8)idx;
        } else {
            retval = BTA_AG_INVALID_CHLD;
        }
    }
    return(retval);
}
