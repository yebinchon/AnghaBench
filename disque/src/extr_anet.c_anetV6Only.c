
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yes ;


 int ANET_ERR ;
 int ANET_OK ;
 int IPPROTO_IPV6 ;
 int IPV6_V6ONLY ;
 int anetSetError (char*,char*,int ) ;
 int close (int) ;
 int errno ;
 int setsockopt (int,int ,int ,int*,int) ;
 int strerror (int ) ;

__attribute__((used)) static int anetV6Only(char *err, int s) {
    int yes = 1;
    if (setsockopt(s,IPPROTO_IPV6,IPV6_V6ONLY,&yes,sizeof(yes)) == -1) {
        anetSetError(err, "setsockopt: %s", strerror(errno));
        close(s);
        return ANET_ERR;
    }
    return ANET_OK;
}
