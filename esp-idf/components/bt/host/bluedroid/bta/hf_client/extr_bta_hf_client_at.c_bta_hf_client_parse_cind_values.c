
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef scalar_t__ UINT16 ;


 int AT_CHECK_RN (char*) ;
 int bta_hf_client_handle_cind_value (scalar_t__,int ) ;
 int sscanf (char*,char*,int *,int*) ;

__attribute__((used)) static char *bta_hf_client_parse_cind_values(char *buffer)
{

    UINT16 index = 0;
    UINT32 value = 0;

    int offset;
    int res;

    while ((res = sscanf(buffer, "%u%n", &value, &offset)) > 0) {

        bta_hf_client_handle_cind_value(index, value);

        buffer += offset;


        if (*buffer != ',') {
            break;
        }

        index++;
        buffer++;
    }

    if (res > 0) {
        AT_CHECK_RN(buffer);
        return buffer;
    }

    return ((void*)0);
}
