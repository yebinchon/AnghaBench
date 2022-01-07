
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_RESPONSE_LENGTH ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 scalar_t__ strlen (char*) ;
 int strncat (char*,char*,scalar_t__) ;

size_t write_function(char *data, size_t size, size_t count, void *arg) {
    size_t length = size * count;
    char *dst = (char *)arg;
    char *src = malloc(length + 1);
    memcpy(src, data, length);
    src[length] = '\0';
    strncat(dst, src, MAX_RESPONSE_LENGTH - strlen(dst) - 1);
    free(src);
    return length;
}
