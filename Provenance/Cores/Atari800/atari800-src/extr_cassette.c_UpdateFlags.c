
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CASSETTE_STATUS_READ_ONLY ;
 scalar_t__ CASSETTE_STATUS_READ_WRITE ;
 scalar_t__ CASSETTE_status ;
 int CASSETTE_write_protect ;
 scalar_t__ cassette_motor ;
 int cassette_readable ;
 int cassette_writable ;
 int eof_of_tape ;

__attribute__((used)) static void UpdateFlags(void)
{
 cassette_readable = cassette_motor &&
                     (CASSETTE_status == CASSETTE_STATUS_READ_WRITE ||
                      CASSETTE_status == CASSETTE_STATUS_READ_ONLY) &&
                      !eof_of_tape;
 cassette_writable = cassette_motor &&
                     CASSETTE_status == CASSETTE_STATUS_READ_WRITE &&
                     !CASSETTE_write_protect;
}
