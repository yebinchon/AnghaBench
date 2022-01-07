
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 scalar_t__ av_file_map (char*,char**,size_t*,int ,int *) ;
 int av_file_unmap (char*,size_t) ;
 int printf (char*,char*) ;

int main(void)
{
    uint8_t *buf;
    size_t size;
    if (av_file_map("file.c", &buf, &size, 0, ((void*)0)) < 0)
        return 1;

    buf[0] = 's';
    printf("%s", buf);
    av_file_unmap(buf, size);
    return 0;
}
