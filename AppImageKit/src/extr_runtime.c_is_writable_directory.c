
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int W_OK ;
 scalar_t__ access (char*,int ) ;

bool is_writable_directory(char* str) {
    if(access(str, W_OK) == 0) {
        return 1;
    } else {
        return 0;
    }
}
