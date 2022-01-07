
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int io_rate_update_cb (int ,int ,int ,int ,int ) ;

uint64_t io_rate_update(uint64_t io_rate_flags, uint64_t read_ops_delta, uint64_t write_ops_delta, uint64_t read_bytes_delta, uint64_t write_bytes_delta) {
 return io_rate_update_cb(io_rate_flags, read_ops_delta, write_ops_delta, read_bytes_delta, write_bytes_delta);
}
