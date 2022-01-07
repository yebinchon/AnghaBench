
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

__attribute__((used)) static size_t process_line(char* line, char* packet)
{
    size_t count = 0;
    size_t i;

    for (i=0; i< strlen(line); i++) {
        char c = line[i];

        if (c == '-' || c == ' ') {
            ++count;

        } else if (c >= '0' && c <= '9') {
            packet[count] *= 16;
            packet[count] += c - '0';

        } else if (c >= 'a' && c <= 'f') {
            packet[count] *= 16;
            packet[count] += c - 'a' + 10;
        }
    }

    if (i>0 && strlen(line)>0) {
        count++;
    }
    return count;
}
