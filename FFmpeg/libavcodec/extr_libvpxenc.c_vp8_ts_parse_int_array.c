
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* av_strtok (char*,char*,char**) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static void vp8_ts_parse_int_array(int *dest, char *value, size_t value_len, int max_entries)
{
    int dest_idx = 0;
    char *saveptr = ((void*)0);
    char *token = av_strtok(value, ",", &saveptr);

    while (token && dest_idx < max_entries) {
        dest[dest_idx++] = strtoul(token, ((void*)0), 10);
        token = av_strtok(((void*)0), ",", &saveptr);
    }
}
