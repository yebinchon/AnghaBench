
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;


 int AT_CHECK_EVENT (char*,char*) ;
 int AT_CHECK_RN (char*) ;
 int bta_hf_client_handle_clcc (int ,int ,int ,int ,int ,char*,int ) ;
 int sscanf (char*,char*,char*,int*,...) ;

__attribute__((used)) static char *bta_hf_client_parse_clcc(char *buffer)
{
    UINT16 idx, dir, status, mode, mpty;
    char numstr[33];
    UINT16 type;
    int res;
    int offset;
    AT_CHECK_EVENT(buffer, "+CLCC:");

    res = sscanf(buffer, "%hu,%hu,%hu,%hu,%hu%n",
                 &idx, &dir, &status, &mode, &mpty, &offset);
    if (res < 5) {
        return ((void*)0);
    }

    buffer += offset;


    if (*buffer == ',') {
        int res2;

        res2 = sscanf(buffer, ",\"%32[^\"]\",%hu%n", numstr, &type, &offset);
        if (res2 < 0) {
            return ((void*)0);
        }

        if (res2 == 0) {
            res2 = sscanf(buffer, ",\"\",%hu%n", &type, &offset);
            if (res < 0) {
                return ((void*)0);
            }


            res2++;
            numstr[0] = '\0';
        }

        if (res2 < 2) {
            return ((void*)0);
        }

        res += res2;
        buffer += offset;
    }

    AT_CHECK_RN(buffer);

    if (res > 6) {

        bta_hf_client_handle_clcc(idx, dir, status, mode, mpty, numstr, type);
    } else {

        bta_hf_client_handle_clcc(idx, dir, status, mode, mpty, ((void*)0), 0);
    }

    return buffer;
}
