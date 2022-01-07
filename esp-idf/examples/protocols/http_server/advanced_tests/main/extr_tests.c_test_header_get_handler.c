
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_req_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NOT_FOUND ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int HTTPD_400_BAD_REQUEST ;
 int HTTPD_500_INTERNAL_SERVER_ERROR ;
 int HTTPD_TYPE_TEXT ;
 int TAG ;
 int free (char*) ;
 int httpd_req_get_hdr_value_len (int *,char*) ;
 scalar_t__ httpd_req_get_hdr_value_str (int *,char*,char*,int) ;
 int httpd_resp_send (int *,char*,int ) ;
 int httpd_resp_send_err (int *,int ,char*) ;
 int httpd_resp_set_type (int *,int ) ;
 char* malloc (int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static esp_err_t test_header_get_handler(httpd_req_t *req)
{
    httpd_resp_set_type(req, HTTPD_TYPE_TEXT);
    int buf_len;
    char *buf;

    buf_len = httpd_req_get_hdr_value_len(req, "Header1");
    if (buf_len > 0) {
        buf = malloc(++buf_len);
        if (!buf) {
            ESP_LOGE(TAG, "Failed to allocate memory of %d bytes!", buf_len);
            httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Memory allocation failed");
            return ESP_ERR_NO_MEM;
        }

        if (httpd_req_get_hdr_value_str(req, "Header1", buf, buf_len) == ESP_OK) {
            ESP_LOGI(TAG, "Header1 content: %s", buf);
            if (strcmp("Value1", buf) != 0) {
                httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "Wrong value of Header1 received");
                free(buf);
                return ESP_ERR_INVALID_ARG;
            } else {
                ESP_LOGI(TAG, "Expected value and received value matched for Header1");
            }
        } else {
            ESP_LOGE(TAG, "Error in getting value of Header1");
            httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "Error in getting value of Header1");
            free(buf);
            return ESP_FAIL;
        }
        free(buf);
    } else {
        ESP_LOGE(TAG, "Header1 not found");
        httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "Header1 not found");
        return ESP_ERR_NOT_FOUND;
    }

    buf_len = httpd_req_get_hdr_value_len(req, "Header3");
    if (buf_len > 0) {
        buf = malloc(++buf_len);
        if (!buf) {
            ESP_LOGE(TAG, "Failed to allocate memory of %d bytes!", buf_len);
            httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Memory allocation failed");
            return ESP_ERR_NO_MEM;
        }

        if (httpd_req_get_hdr_value_str(req, "Header3", buf, buf_len) == ESP_OK) {
            ESP_LOGI(TAG, "Header3 content: %s", buf);
            if (strcmp("Value3", buf) != 0) {
                httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "Wrong value of Header3 received");
                free(buf);
                return ESP_ERR_INVALID_ARG;
            } else {
                ESP_LOGI(TAG, "Expected value and received value matched for Header3");
            }
        } else {
            ESP_LOGE(TAG, "Error in getting value of Header3");
            httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "Error in getting value of Header3");
            free(buf);
            return ESP_FAIL;
        }
        free(buf);
    } else {
        ESP_LOGE(TAG, "Header3 not found");
        httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "Header3 not found");
        return ESP_ERR_NOT_FOUND;
    }

    buf_len = httpd_req_get_hdr_value_len(req, "Header2");
    buf = malloc(++buf_len);
    if (!buf) {
        ESP_LOGE(TAG, "Failed to allocate memory of %d bytes!", buf_len);
        httpd_resp_send_err(req, HTTPD_500_INTERNAL_SERVER_ERROR, "Memory allocation failed");
        return ESP_ERR_NO_MEM;
    }
    if (httpd_req_get_hdr_value_str(req, "Header2", buf, buf_len) == ESP_OK) {
        ESP_LOGI(TAG, "Header2 content: %s", buf);
        httpd_resp_send(req, buf, strlen(buf));
    } else {
        ESP_LOGE(TAG, "Header2 not found");
        httpd_resp_send_err(req, HTTPD_400_BAD_REQUEST, "Header2 not found");
        return ESP_FAIL;
    }

    return ESP_OK;
}
