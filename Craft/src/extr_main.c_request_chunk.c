
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_chunk (int,int,int) ;
 int db_get_key (int,int) ;

void request_chunk(int p, int q) {
    int key = db_get_key(p, q);
    client_chunk(p, q, key);
}
