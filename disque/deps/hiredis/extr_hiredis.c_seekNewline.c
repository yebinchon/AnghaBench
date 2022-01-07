
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *seekNewline(char *s, size_t len) {
    int pos = 0;
    int _len = len-1;





    while (pos < _len) {
        while(pos < _len && s[pos] != '\r') pos++;
        if (s[pos] != '\r') {

            return ((void*)0);
        } else {
            if (s[pos+1] == '\n') {

                return s+pos;
            } else {

                pos++;
            }
        }
    }
    return ((void*)0);
}
