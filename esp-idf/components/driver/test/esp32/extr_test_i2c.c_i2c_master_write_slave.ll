; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_master_write_slave.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_master_write_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_SLAVE_ADDR = common dso_local global i32 0, align 4
@WRITE_BIT = common dso_local global i32 0, align 4
@ACK_CHECK_EN = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @i2c_master_write_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_master_write_slave(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 (...) @i2c_cmd_link_create()
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @i2c_master_start(i32 %10)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ESP_SLAVE_ADDR, align 4
  %14 = shl i32 %13, 1
  %15 = load i32, i32* @WRITE_BIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ACK_CHECK_EN, align 4
  %18 = call i32 @i2c_master_write_byte(i32 %12, i32 %16, i32 %17)
  %19 = call i32 @TEST_ESP_OK(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* @ACK_CHECK_EN, align 4
  %24 = call i32 @i2c_master_write(i32 %20, i32* %21, i64 %22, i32 %23)
  %25 = call i32 @TEST_ESP_OK(i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @i2c_master_stop(i32 %26)
  %28 = call i32 @TEST_ESP_OK(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @portTICK_RATE_MS, align 4
  %32 = sdiv i32 5000, %31
  %33 = call i32 @i2c_master_cmd_begin(i32 %29, i32 %30, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @i2c_cmd_link_delete(i32 %34)
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @i2c_master_write(i32, i32*, i64, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i32 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
