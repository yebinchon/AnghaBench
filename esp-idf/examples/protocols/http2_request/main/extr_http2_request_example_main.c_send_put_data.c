
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sh2lib_handle {int dummy; } ;


 int DATA_TO_SEND ;
 int NGHTTP2_DATA_FLAG_EOF ;
 int memcpy (char*,int ,int) ;
 int printf (char*,int) ;
 int strlen (int ) ;

int send_put_data(struct sh2lib_handle *handle, char *buf, size_t length, uint32_t *data_flags)
{

    int copylen = strlen("Hello World");
    if (copylen < length) {
        printf("[data-prvd] Sending %d bytes\n", copylen);
        memcpy(buf, "Hello World", copylen);
    } else {
        copylen = 0;
    }

    (*data_flags) |= NGHTTP2_DATA_FLAG_EOF;
    return copylen;
}
