
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_ERR ;
 int C_OK ;
 size_t JOB_ID_LEN ;

int validateJobID(char *id, size_t len) {
    if (len != JOB_ID_LEN) return C_ERR;
    if (id[0] != 'D' ||
        id[1] != '-' ||
        id[10] != '-' ||
        id[35] != '-') return C_ERR;
    return C_OK;
}
