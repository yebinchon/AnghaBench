
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HASH_SIZE ;
 int av_md5_final (int ,int*) ;
 char* cur_name ;
 int fclose (int *) ;
 int* hash ;
 int md5 ;
 int * out ;
 int out_size ;
 int printf (char*,int,...) ;

__attribute__((used)) static void close_out(void)
{
    int i;
    av_md5_final(md5, hash);
    for (i = 0; i < HASH_SIZE; i++)
        printf("%02x", hash[i]);
    printf(" %d %s\n", out_size, cur_name);
    if (out)
        fclose(out);
    out = ((void*)0);
}
