; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_self_test/main/extr_i2c_example_main.c_i2c_master_read_slave.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_self_test/main/extr_i2c_example_main.c_i2c_master_read_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_OK = common dso_local global i32 0, align 4
@ESP_SLAVE_ADDR = common dso_local global i32 0, align 4
@READ_BIT = common dso_local global i32 0, align 4
@ACK_CHECK_EN = common dso_local global i32 0, align 4
@ACK_VAL = common dso_local global i32 0, align 4
@NACK_VAL = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i64)* @i2c_master_read_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_master_read_slave(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ESP_OK, align 4
  store i32 %13, i32* %4, align 4
  br label %52

14:                                               ; preds = %3
  %15 = call i32 (...) @i2c_cmd_link_create()
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @i2c_master_start(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ESP_SLAVE_ADDR, align 4
  %20 = shl i32 %19, 1
  %21 = load i32, i32* @READ_BIT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ACK_CHECK_EN, align 4
  %24 = call i32 @i2c_master_write_byte(i32 %18, i32 %22, i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %14
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, 1
  %32 = load i32, i32* @ACK_VAL, align 4
  %33 = call i32 @i2c_master_read(i32 %28, i32* %29, i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %14
  %35 = load i32, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = getelementptr inbounds i32, i32* %38, i64 -1
  %40 = load i32, i32* @NACK_VAL, align 4
  %41 = call i32 @i2c_master_read_byte(i32 %35, i32* %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @i2c_master_stop(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @portTICK_RATE_MS, align 4
  %47 = sdiv i32 1000, %46
  %48 = call i32 @i2c_master_cmd_begin(i32 %44, i32 %45, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @i2c_cmd_link_delete(i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %34, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @i2c_master_read(i32, i32*, i64, i32) #1

declare dso_local i32 @i2c_master_read_byte(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i32 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
