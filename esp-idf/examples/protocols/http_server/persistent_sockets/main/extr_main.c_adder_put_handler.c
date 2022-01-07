
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int outbuf ;
struct TYPE_6__ {scalar_t__ sess_ctx; int free_ctx; scalar_t__ user_ctx; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;
typedef int buf ;


 int ESP_FAIL ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_OK ;
 int HTTPD_SOCK_ERR_TIMEOUT ;
 int TAG ;
 int adder_free_func ;
 int atoi (char*) ;
 int httpd_req_recv (TYPE_1__*,char*,int) ;
 int httpd_resp_send (TYPE_1__*,char*,int ) ;
 int httpd_resp_send_408 (TYPE_1__*) ;
 scalar_t__ malloc (int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static esp_err_t adder_put_handler(httpd_req_t *req)
{

    unsigned *visitors = (unsigned *)req->user_ctx;
    ESP_LOGI(TAG, "/adder visitor count = %d", ++(*visitors));

    char buf[10];
    char outbuf[50];
    int ret;


    ret = httpd_req_recv(req, buf, sizeof(buf));
    if (ret <= 0) {
        if (ret == HTTPD_SOCK_ERR_TIMEOUT) {
            httpd_resp_send_408(req);
        }
        return ESP_FAIL;
    }

    buf[ret] = '\0';
    int val = atoi(buf);
    ESP_LOGI(TAG, "/adder PUT handler read %d", val);


    if (! req->sess_ctx) {
        ESP_LOGI(TAG, "/adder PUT allocating new session");
        req->sess_ctx = malloc(sizeof(int));
        req->free_ctx = adder_free_func;
    }
    *(int *)req->sess_ctx = val;


    snprintf(outbuf, sizeof(outbuf),"%d", *((int *)req->sess_ctx));
    httpd_resp_send(req, outbuf, strlen(outbuf));
    return ESP_OK;
}
