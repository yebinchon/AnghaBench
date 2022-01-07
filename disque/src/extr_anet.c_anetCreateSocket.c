
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANET_ERR ;
 int SOCK_STREAM ;
 int anetSetError (char*,char*,int ) ;
 int anetSetReuseAddr (char*,int) ;
 int close (int) ;
 int errno ;
 int socket (int,int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int anetCreateSocket(char *err, int domain) {
    int s;
    if ((s = socket(domain, SOCK_STREAM, 0)) == -1) {
        anetSetError(err, "creating socket: %s", strerror(errno));
        return ANET_ERR;
    }



    if (anetSetReuseAddr(err,s) == ANET_ERR) {
        close(s);
        return ANET_ERR;
    }
    return s;
}
