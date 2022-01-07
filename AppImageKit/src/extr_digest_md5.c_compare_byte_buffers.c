
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool compare_byte_buffers(const char* buf1, const char* buf2, size_t num_bytes) {
    for (size_t i = 0; i < num_bytes; i++) {
        if (buf1[i] != buf2[i]) {
            return 0;
        }
    }

    return 1;
}
