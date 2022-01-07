
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERR_HTTPD_RESULT_TRUNC ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_LOGD (int ,int ,char const*) ;
 int ESP_OK ;
 int LOG_FMT (char*) ;
 int MIN (size_t,size_t const) ;
 int TAG ;
 char* strchr (char const*,char) ;
 int strlcpy (char*,char const*,int ) ;
 int strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

esp_err_t httpd_query_key_value(const char *qry_str, const char *key, char *val, size_t val_size)
{
    if (qry_str == ((void*)0) || key == ((void*)0) || val == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    const char *qry_ptr = qry_str;
    const size_t buf_len = val_size;

    while (strlen(qry_ptr)) {


        const char *val_ptr = strchr(qry_ptr, '=');
        if (!val_ptr) {
            break;
        }
        size_t offset = val_ptr - qry_ptr;




        if ((offset != strlen(key)) ||
            (strncasecmp(qry_ptr, key, offset))) {


            qry_ptr = strchr(val_ptr, '&');
            if (!qry_ptr) {
                break;
            }
            qry_ptr++;
            continue;
        }


        qry_ptr = strchr(++val_ptr, '&');


        if (!qry_ptr) {
            qry_ptr = val_ptr + strlen(val_ptr);
        }


        val_size = qry_ptr - val_ptr + 1;


        strlcpy(val, val_ptr, MIN(val_size, buf_len));


        if (buf_len < val_size) {
            return ESP_ERR_HTTPD_RESULT_TRUNC;
        }
        return ESP_OK;
    }
    ESP_LOGD(TAG, LOG_FMT("key %s not found"), key);
    return ESP_ERR_NOT_FOUND;
}
