
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tv ;
struct timeval {long long tv_sec; long long tv_usec; } ;


 int ANET_ERR ;
 int ANET_OK ;
 int SOL_SOCKET ;
 int SO_SNDTIMEO ;
 int anetSetError (char*,char*,int ) ;
 int errno ;
 int setsockopt (int,int ,int ,struct timeval*,int) ;
 int strerror (int ) ;

int anetSendTimeout(char *err, int fd, long long ms) {
    struct timeval tv;

    tv.tv_sec = ms/1000;
    tv.tv_usec = (ms%1000)*1000;
    if (setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv)) == -1) {
        anetSetError(err, "setsockopt SO_SNDTIMEO: %s", strerror(errno));
        return ANET_ERR;
    }
    return ANET_OK;
}
