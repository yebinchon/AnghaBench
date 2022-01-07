
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpd_data {int dummy; } ;


 int ESP_LOGD (int ,int ,int) ;
 int LOG_FMT (char*) ;
 int TAG ;
 int close (int) ;
 int httpd_sess_delete (struct httpd_data*,int) ;
 int httpd_sess_iterate (struct httpd_data*,int) ;

__attribute__((used)) static void httpd_close_all_sessions(struct httpd_data *hd)
{
    int fd = -1;
    while ((fd = httpd_sess_iterate(hd, fd)) != -1) {
        ESP_LOGD(TAG, LOG_FMT("cleaning up socket %d"), fd);
        httpd_sess_delete(hd, fd);
        close(fd);
    }
}
