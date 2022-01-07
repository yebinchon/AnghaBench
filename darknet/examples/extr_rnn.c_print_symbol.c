
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void print_symbol(int n, char **tokens){
    if(tokens){
        printf("%s ", tokens[n]);
    } else {
        printf("%c", n);
    }
}
