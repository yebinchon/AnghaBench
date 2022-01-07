
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct httpd_req_aux {TYPE_1__* sd; } ;
typedef int nodelay ;
struct TYPE_8__ {struct httpd_req_aux* aux; } ;
typedef TYPE_2__ httpd_req_t ;
typedef int httpd_err_code_t ;
typedef int esp_err_t ;
struct TYPE_7__ {int fd; } ;


 int ESP_ERR_INVALID_STATE ;
 int ESP_LOGE (int ,int ,int ) ;
 int ESP_LOGW (int ,int ,char const*,...) ;
 int HTTPD_TYPE_TEXT ;
 int IPPROTO_TCP ;
 int LOG_FMT (char*) ;
 int TAG ;
 int TCP_NODELAY ;
 int errno ;
 int httpd_resp_send (TYPE_2__*,char const*,int ) ;
 int httpd_resp_set_status (TYPE_2__*,char const*) ;
 int httpd_resp_set_type (TYPE_2__*,int ) ;
 scalar_t__ setsockopt (int ,int ,int ,int*,int) ;
 int strlen (char const*) ;

esp_err_t httpd_resp_send_err(httpd_req_t *req, httpd_err_code_t error, const char *usr_msg)
{
    esp_err_t ret;
    const char *msg;
    const char *status;

    switch (error) {
        case 129:
            status = "501 Method Not Implemented";
            msg = "Request method is not supported by server";
            break;
        case 128:
            status = "505 Version Not Supported";
            msg = "HTTP version not supported by server";
            break;
        case 137:
            status = "400 Bad Request";
            msg = "Server unable to understand request due to invalid syntax";
            break;
        case 136:
            status = "404 Not Found";
            msg = "This URI does not exist";
            break;
        case 135:
            status = "405 Method Not Allowed";
            msg = "Request method for this URI is not handled by server";
            break;
        case 134:
            status = "408 Request Timeout";
            msg = "Server closed this connection";
            break;
        case 132:
            status = "414 URI Too Long";
            msg = "URI is too long for server to interpret";
            break;
        case 133:
            status = "411 Length Required";
            msg = "Chunked encoding not supported by server";
            break;
        case 131:
            status = "431 Request Header Fields Too Large";
            msg = "Header fields are too long for server to interpret";
            break;
        case 130:
        default:
            status = "500 Internal Server Error";
            msg = "Server has encountered an unexpected error";
    }


    msg = usr_msg ? usr_msg : msg;
    ESP_LOGW(TAG, LOG_FMT("%s - %s"), status, msg);


    httpd_resp_set_status(req, status);
    httpd_resp_set_type(req, HTTPD_TYPE_TEXT);
    ret = httpd_resp_send(req, msg, strlen(msg));
    return ret;
}
