
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int enable ;


 int SRTO_RCVSYN ;
 int SRTO_SNDSYN ;
 int srt_setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static int libsrt_socket_nonblock(int socket, int enable)
{
    int ret = srt_setsockopt(socket, 0, SRTO_SNDSYN, &enable, sizeof(enable));
    if (ret < 0)
        return ret;
    return srt_setsockopt(socket, 0, SRTO_RCVSYN, &enable, sizeof(enable));
}
