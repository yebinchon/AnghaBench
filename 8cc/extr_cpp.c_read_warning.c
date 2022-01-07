
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int read_error_message () ;
 int warnt (int *,char*,int ) ;

__attribute__((used)) static void read_warning(Token *hash) {
    warnt(hash, "#warning: %s", read_error_message());
}
