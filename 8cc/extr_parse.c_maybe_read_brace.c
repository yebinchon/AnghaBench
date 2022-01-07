
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int next_token (char) ;

__attribute__((used)) static bool maybe_read_brace() {
    return next_token('{');
}
