
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_db {scalar_t__ lru_counter; int fd; scalar_t__ handle; } ;
struct httpd_data {int dummy; } ;


 int ESP_LOGD (int ,char*,int) ;
 int TAG ;
 int close (int) ;
 int httpd_sess_delete (struct httpd_data*,int) ;

__attribute__((used)) static void httpd_sess_close(void *arg)
{
    struct sock_db *sock_db = (struct sock_db *)arg;
    if (sock_db) {
        if (sock_db->lru_counter == 0) {
            ESP_LOGD(TAG, "Skipping session close for %d as it seems to be a race condition", sock_db->fd);
            return;
        }
        int fd = sock_db->fd;
        struct httpd_data *hd = (struct httpd_data *) sock_db->handle;
        httpd_sess_delete(hd, fd);
        close(fd);
    }
}
