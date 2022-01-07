
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int outbuf ;
struct TYPE_4__ {scalar_t__ sess_ctx; int free_ctx; scalar_t__ user_ctx; } ;
typedef TYPE_1__ httpd_req_t ;
typedef int esp_err_t ;


 int ESP_LOGI (int ,char*,...) ;
 int ESP_OK ;
 int TAG ;
 int adder_free_func ;
 int httpd_resp_send (TYPE_1__*,char*,int ) ;
 scalar_t__ malloc (int) ;
 int snprintf (char*,int,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static esp_err_t adder_get_handler(httpd_req_t *req)
{

    unsigned *visitors = (unsigned *)req->user_ctx;
    ESP_LOGI(TAG, "/adder visitor count = %d", ++(*visitors));

    char outbuf[50];


    if (! req->sess_ctx) {
        ESP_LOGI(TAG, "/adder GET allocating new session");
        req->sess_ctx = malloc(sizeof(int));
        req->free_ctx = adder_free_func;
        *(int *)req->sess_ctx = 0;
    }
    ESP_LOGI(TAG, "/adder GET handler send %d", *(int *)req->sess_ctx);


    snprintf(outbuf, sizeof(outbuf),"%d", *((int *)req->sess_ctx));
    httpd_resp_send(req, outbuf, strlen(outbuf));
    return ESP_OK;
}
