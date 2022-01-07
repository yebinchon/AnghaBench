
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yes ;


 int ANET_ERR ;
 int ANET_OK ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int anetSetError (char*,char*,int ) ;
 int errno ;
 int setsockopt (int,int ,int ,int*,int) ;
 int strerror (int ) ;

__attribute__((used)) static int anetSetReuseAddr(char *err, int fd) {
    int yes = 1;


    if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &yes, sizeof(yes)) == -1) {
        anetSetError(err, "setsockopt SO_REUSEADDR: %s", strerror(errno));
        return ANET_ERR;
    }
    return ANET_OK;
}
