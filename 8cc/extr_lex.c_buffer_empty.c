
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffers ;
 int vec_head (int ) ;
 int vec_len (int ) ;

__attribute__((used)) static bool buffer_empty() {
    return vec_len(buffers) == 1 && vec_len(vec_head(buffers)) == 0;
}
