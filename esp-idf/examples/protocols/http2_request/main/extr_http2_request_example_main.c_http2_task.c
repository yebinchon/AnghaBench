
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh2lib_handle {int dummy; } ;


 int HTTP2_PUT_PATH ;
 int HTTP2_SERVER_URI ;
 int HTTP2_STREAMING_GET_PATH ;
 int handle_echo_response ;
 int handle_get_response ;
 int printf (char*) ;
 int send_put_data ;
 int set_time () ;
 scalar_t__ sh2lib_connect (struct sh2lib_handle*,int ) ;
 int sh2lib_do_get (struct sh2lib_handle*,int ,int ) ;
 int sh2lib_do_put (struct sh2lib_handle*,int ,int ,int ) ;
 scalar_t__ sh2lib_execute (struct sh2lib_handle*) ;
 int sh2lib_free (struct sh2lib_handle*) ;
 int vTaskDelay (int) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void http2_task(void *args)
{



    set_time();


    printf("Connecting to server\n");
    struct sh2lib_handle hd;
    if (sh2lib_connect(&hd, HTTP2_SERVER_URI) != 0) {
        printf("Failed to connect\n");
        vTaskDelete(((void*)0));
        return;
    }
    printf("Connection done\n");


    sh2lib_do_get(&hd, HTTP2_STREAMING_GET_PATH, handle_get_response);


    sh2lib_do_put(&hd, HTTP2_PUT_PATH, send_put_data, handle_echo_response);

    while (1) {

        if (sh2lib_execute(&hd) < 0) {
            printf("Error in send/receive\n");
            break;
        }
        vTaskDelay(2);
    }

    sh2lib_free(&hd);
    vTaskDelete(((void*)0));
}
