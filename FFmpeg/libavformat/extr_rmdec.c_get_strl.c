
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOContext ;


 int avio_get_str (int *,int,char*,int) ;
 int avio_skip (int *,int) ;

__attribute__((used)) static inline void get_strl(AVIOContext *pb, char *buf, int buf_size, int len)
{
    int read = avio_get_str(pb, len, buf, buf_size);

    if (read > 0)
        avio_skip(pb, len - read);
}
