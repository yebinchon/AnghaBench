
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Token ;


 int errort (int *,char*,int ) ;
 int read_error_message () ;

__attribute__((used)) static void read_error(Token *hash) {
    errort(hash, "#error: %s", read_error_message());
}
