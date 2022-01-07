
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int buf ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,int,char*) ;
 int TAG ;
 int portTICK_PERIOD_MS ;
 int snprintf (char*,int,char*,int) ;
 int socket_deinit () ;
 int socket_fd ;
 int socket_init () ;
 int strlen (char*) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void socket_write_task(void *param)
{
    char buf[20];

    socket_init();

    for (uint8_t i = 1;; ++i) {
        vTaskDelay(3000 / portTICK_PERIOD_MS);

        snprintf(buf, sizeof(buf), "Socket message S%d", i);
        int write_bytes = write(socket_fd, buf, strlen(buf));
        if (write_bytes < 0) {
            ESP_LOGE(TAG, "Socket write error");
        } else {
            ESP_LOGI(TAG, "%d bytes were written to socket: %s", write_bytes, buf);
        }
    }

    socket_deinit();
    vTaskDelete(((void*)0));
}
