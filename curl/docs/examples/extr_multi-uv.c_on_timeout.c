
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int CURL_SOCKET_TIMEOUT ;
 int check_multi_info () ;
 int curl_handle ;
 int curl_multi_socket_action (int ,int ,int ,int*) ;

__attribute__((used)) static void on_timeout(uv_timer_t *req)
{
  int running_handles;
  curl_multi_socket_action(curl_handle, CURL_SOCKET_TIMEOUT, 0,
                           &running_handles);
  check_multi_info();
}
