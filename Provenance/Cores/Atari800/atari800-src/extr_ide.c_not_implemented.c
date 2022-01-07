
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ IDE_debug ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static inline void not_implemented(uint8_t val) {
    if (IDE_debug) fprintf(stderr, "\tIDE: %02x not implemented\n", val);
}
