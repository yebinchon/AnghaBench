
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int uc_kx_st; } ;
typedef TYPE_1__ Context ;


 int O_RDONLY ;
 int close (int) ;
 int open (char const*,int ) ;
 int safe_read (int,unsigned char*,int,int) ;
 int uc_memzero (unsigned char*,int) ;
 int uc_state_init (int ,unsigned char*,unsigned char const*) ;

__attribute__((used)) static int load_key_file(Context *context, const char *file)
{
    unsigned char key[32];
    int fd;

    if ((fd = open(file, O_RDONLY)) == -1) {
        return -1;
    }
    if (safe_read(fd, key, sizeof key, -1) != sizeof key) {
        (void) close(fd);
        return -1;
    }
    uc_state_init(context->uc_kx_st, key, (const unsigned char *) "VPN Key Exchange");
    uc_memzero(key, sizeof key);

    return close(fd);
}
