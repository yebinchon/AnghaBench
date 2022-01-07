
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;
typedef int buf ;


 int ESP_LOGE (int ,char*,char const*) ;
 int ESP_LOGI (int ,char*,int,char const*,char*) ;
 scalar_t__ FD_ISSET (int,int const*) ;
 int TAG ;
 int read (int,char*,int) ;

__attribute__((used)) static void check_and_print(int fd, const fd_set *rfds, const char *src_msg)
{
    char buf[100];
    int read_bytes;

    if (FD_ISSET(fd, rfds)) {
        if ((read_bytes = read(fd, buf, sizeof(buf)-1)) > 0) {
            buf[read_bytes] = '\0';
            ESP_LOGI(TAG, "%d bytes were received through %s: %s", read_bytes, src_msg, buf);
        } else {
            ESP_LOGE(TAG, "%s read error", src_msg);
        }
    }
}
