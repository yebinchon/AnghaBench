
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;


 int unget_token (int ) ;
 int vec_get (int *,int) ;
 int vec_len (int *) ;

__attribute__((used)) static void unget_all(Vector *tokens) {
    for (int i = vec_len(tokens) - 1; i >= 0; i--)
        unget_token(vec_get(tokens, i));
}
