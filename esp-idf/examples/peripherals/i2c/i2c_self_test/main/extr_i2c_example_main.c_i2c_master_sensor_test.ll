; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_self_test/main/extr_i2c_example_main.c_i2c_master_sensor_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_self_test/main/extr_i2c_example_main.c_i2c_master_sensor_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BH1750_SENSOR_ADDR = common dso_local global i32 0, align 4
@WRITE_BIT = common dso_local global i32 0, align 4
@ACK_CHECK_EN = common dso_local global i32 0, align 4
@BH1750_CMD_START = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@READ_BIT = common dso_local global i32 0, align 4
@ACK_VAL = common dso_local global i32 0, align 4
@NACK_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @i2c_master_sensor_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_master_sensor_test(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 (...) @i2c_cmd_link_create()
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @i2c_master_start(i32 %11)
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @BH1750_SENSOR_ADDR, align 4
  %15 = shl i32 %14, 1
  %16 = load i32, i32* @WRITE_BIT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ACK_CHECK_EN, align 4
  %19 = call i32 @i2c_master_write_byte(i32 %13, i32 %17, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @BH1750_CMD_START, align 4
  %22 = load i32, i32* @ACK_CHECK_EN, align 4
  %23 = call i32 @i2c_master_write_byte(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @i2c_master_stop(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @portTICK_RATE_MS, align 4
  %29 = sdiv i32 1000, %28
  %30 = call i32 @i2c_master_cmd_begin(i32 %26, i32 %27, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @i2c_cmd_link_delete(i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @ESP_OK, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %70

38:                                               ; preds = %3
  %39 = load i32, i32* @portTICK_RATE_MS, align 4
  %40 = sdiv i32 30, %39
  %41 = call i32 @vTaskDelay(i32 %40)
  %42 = call i32 (...) @i2c_cmd_link_create()
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @i2c_master_start(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @BH1750_SENSOR_ADDR, align 4
  %47 = shl i32 %46, 1
  %48 = load i32, i32* @READ_BIT, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @ACK_CHECK_EN, align 4
  %51 = call i32 @i2c_master_write_byte(i32 %45, i32 %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @ACK_VAL, align 4
  %55 = call i32 @i2c_master_read_byte(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @NACK_VAL, align 4
  %59 = call i32 @i2c_master_read_byte(i32 %56, i32* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @i2c_master_stop(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @portTICK_RATE_MS, align 4
  %65 = sdiv i32 1000, %64
  %66 = call i32 @i2c_master_cmd_begin(i32 %62, i32 %63, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @i2c_cmd_link_delete(i32 %67)
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %38, %36
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i32 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @i2c_master_read_byte(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
