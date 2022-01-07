; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_i2c.c_test_task.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/extr_test_i2c.c_test_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_LENGTH = common dso_local global i32 0, align 4
@I2C_SLAVE_NUM = common dso_local global i32 0, align 4
@I2C_MODE_SLAVE = common dso_local global i32 0, align 4
@I2C_SLAVE_RX_BUF_LEN = common dso_local global i32 0, align 4
@I2C_SLAVE_TX_BUF_LEN = common dso_local global i32 0, align 4
@exit_flag = common dso_local global i32 0, align 4
@test_read_func = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* @DATA_LENGTH, align 4
  %9 = call i64 @malloc(i32 %8)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = call i32 (...) @i2c_slave_init()
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %13 = call i32 @i2c_param_config(i32 %12, i32* %5)
  %14 = call i32 @TEST_ESP_OK(i32 %13)
  %15 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %16 = load i32, i32* @I2C_MODE_SLAVE, align 4
  %17 = load i32, i32* @I2C_SLAVE_RX_BUF_LEN, align 4
  %18 = load i32, i32* @I2C_SLAVE_TX_BUF_LEN, align 4
  %19 = call i32 @i2c_driver_install(i32 %15, i32 %16, i32 %17, i32 %18, i32 0)
  %20 = call i32 @TEST_ESP_OK(i32 %19)
  br label %21

21:                                               ; preds = %37, %1
  %22 = load i32, i32* @exit_flag, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i64, i64* @test_read_func, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @DATA_LENGTH, align 4
  %31 = call i32 @i2c_slave_read_buffer(i32 %28, i32* %29, i32 %30, i32 0)
  br label %37

32:                                               ; preds = %24
  %33 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @DATA_LENGTH, align 4
  %36 = call i32 @i2c_slave_write_buffer(i32 %33, i32* %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %32, %27
  br label %21

38:                                               ; preds = %21
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @free(i32* %39)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @xSemaphoreGive(i32 %42)
  %44 = call i32 @vTaskDelete(i32* null)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @i2c_slave_init(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @i2c_param_config(i32, i32*) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_slave_read_buffer(i32, i32*, i32, i32) #1

declare dso_local i32 @i2c_slave_write_buffer(i32, i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

declare dso_local i32 @vTaskDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
