
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;


 int BCM_STRNCPY_S (char*,int,char*,int) ;
 int BTA_AG_AT_MAX_LEN ;
 int strlen (char*) ;

__attribute__((used)) static void bta_ag_process_unat_res(char *unat_result)
{
    UINT8 str_leng;
    UINT8 i = 0;
    UINT8 j = 0;
    UINT8 pairs_of_nl_cr;
    char trim_data[BTA_AG_AT_MAX_LEN];

    str_leng = strlen(unat_result);

    if(str_leng < 4) {
        return;
    }


    while(unat_result[0] =='\r' && unat_result[1] =='\n'
        && unat_result[str_leng-2] =='\r' && unat_result[str_leng-1] =='\n') {
        pairs_of_nl_cr = 1;
        for (i=0;i<(str_leng-4*pairs_of_nl_cr);i++) {
            trim_data[j++] = unat_result[i+pairs_of_nl_cr*2];
        }

        trim_data[j] = '\0';
        str_leng = str_leng - 4;
        BCM_STRNCPY_S(unat_result, BTA_AG_AT_MAX_LEN+1, trim_data,str_leng+1);
        i=0;
        j=0;
        if(str_leng <4) {
            return;
        }
    }
    return;
}
