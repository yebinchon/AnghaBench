
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;
typedef int AVIOContext ;


 int AVIO_FLAG_READ ;
 int AV_LOG_ERROR ;
 int av_log (int *,int ,char*,char const*) ;
 int avio_close_dyn_buf (int *,int **) ;
 int avio_closep (int **) ;
 int avio_open (int **,char const*,int ) ;
 int avio_open_dyn_buf (int **) ;
 int avio_read (int *,int *,int) ;
 int avio_w8 (int *,int ) ;
 int avio_write (int *,int *,int) ;

__attribute__((used)) static uint8_t *read_file(const char *filename)
{
    AVIOContext *pb = ((void*)0);
    AVIOContext *dyn_buf = ((void*)0);
    int ret = avio_open(&pb, filename, AVIO_FLAG_READ);
    uint8_t buf[1024], *str;

    if (ret < 0) {
        av_log(((void*)0), AV_LOG_ERROR, "Error opening file %s.\n", filename);
        return ((void*)0);
    }

    ret = avio_open_dyn_buf(&dyn_buf);
    if (ret < 0) {
        avio_closep(&pb);
        return ((void*)0);
    }
    while ((ret = avio_read(pb, buf, sizeof(buf))) > 0)
        avio_write(dyn_buf, buf, ret);
    avio_w8(dyn_buf, 0);
    avio_closep(&pb);

    ret = avio_close_dyn_buf(dyn_buf, &str);
    if (ret < 0)
        return ((void*)0);
    return str;
}
