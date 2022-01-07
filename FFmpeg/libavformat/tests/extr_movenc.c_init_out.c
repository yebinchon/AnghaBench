
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int av_md5_init (int ) ;
 char* cur_name ;
 int fopen (char*,char*) ;
 char* format ;
 int md5 ;
 int out ;
 scalar_t__ out_size ;
 int perror (char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ write_file ;

__attribute__((used)) static void init_out(const char *name)
{
    char buf[100];
    cur_name = name;
    snprintf(buf, sizeof(buf), "%s.%s", cur_name, format);

    av_md5_init(md5);
    if (write_file) {
        out = fopen(buf, "wb");
        if (!out)
            perror(buf);
    }
    out_size = 0;
}
