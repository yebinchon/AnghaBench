
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct async_resp_arg {int fd; int hd; } ;
typedef int httpd_handle_t ;
typedef int buf ;


 int ESP_LOGI (int ,char*,int) ;
 char* HTTPD_HDR_STR ;
 char* STR ;
 int TAG ;
 int free (void*) ;
 int httpd_default_send (int ,int,char*,int ,int ) ;
 int snprintf (char*,int,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void generate_async_resp(void *arg)
{
    char buf[250];
    struct async_resp_arg *resp_arg = (struct async_resp_arg *)arg;
    httpd_handle_t hd = resp_arg->hd;
    int fd = resp_arg->fd;





    ESP_LOGI(TAG, "Executing queued work fd : %d", fd);

    snprintf(buf, sizeof(buf), "HTTP/1.1 200 OK\r\n" "Content-Type: text/html\r\n" "Content-Length: %d\r\n",
         strlen("Hello Double World!"));
    httpd_default_send(hd, fd, buf, strlen(buf), 0);

    httpd_default_send(hd, fd, "\r\n", strlen("\r\n"), 0);
    httpd_default_send(hd, fd, "Hello Double World!", strlen("Hello Double World!"), 0);

    free(arg);
}
