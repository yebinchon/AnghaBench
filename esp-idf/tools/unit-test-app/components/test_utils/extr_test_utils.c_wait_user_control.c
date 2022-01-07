
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int sign ;


 int bzero (char*,int) ;
 int unity_gets (char*,int) ;

__attribute__((used)) static void wait_user_control(char* parameter_buf, uint8_t buf_len)
{
    char *buffer = parameter_buf;
    char sign[5];
    uint8_t buffer_len = buf_len - 1;

    if (parameter_buf == ((void*)0)) {
        buffer = sign;
        buffer_len = sizeof(sign) - 1;
    }

    bzero(buffer, buffer_len);

    unity_gets(buffer, buffer_len);
}
