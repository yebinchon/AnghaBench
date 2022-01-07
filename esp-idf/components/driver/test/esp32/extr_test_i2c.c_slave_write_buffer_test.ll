; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_slave_write_buffer_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_slave_write_buffer_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_LENGTH = common dso_local global i32 0, align 4
@I2C_SLAVE_NUM = common dso_local global i32 0, align 4
@I2C_MODE_SLAVE = common dso_local global i32 0, align 4
@I2C_SLAVE_RX_BUF_LEN = common dso_local global i32 0, align 4
@I2C_SLAVE_TX_BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i2c slave init finish\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"slave write\00", align 1
@RW_TEST_LENGTH = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"master read\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ready to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @slave_write_buffer_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slave_write_buffer_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DATA_LENGTH, align 4
  %6 = call i64 @malloc(i32 %5)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %1, align 8
  %8 = call i32 (...) @i2c_slave_init()
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %10 = call i32 @i2c_param_config(i32 %9, i32* %3)
  %11 = call i32 @TEST_ESP_OK(i32 %10)
  %12 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %13 = load i32, i32* @I2C_MODE_SLAVE, align 4
  %14 = load i32, i32* @I2C_SLAVE_RX_BUF_LEN, align 4
  %15 = load i32, i32* @I2C_SLAVE_TX_BUF_LEN, align 4
  %16 = call i32 @i2c_driver_install(i32 %12, i32 %13, i32 %14, i32 %15, i32 0)
  %17 = call i32 @TEST_ESP_OK(i32 %16)
  %18 = call i32 @unity_send_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %31, %0
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DATA_LENGTH, align 4
  %23 = sdiv i32 %22, 2
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** %1, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  store i32 %26, i32* %30, align 4
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %36 = load i32*, i32** %1, align 8
  %37 = load i32, i32* @RW_TEST_LENGTH, align 4
  %38 = load i32, i32* @portTICK_RATE_MS, align 4
  %39 = sdiv i32 2000, %38
  %40 = call i32 @i2c_slave_write_buffer(i32 %35, i32* %36, i32 %37, i32 %39)
  store i32 %40, i32* %2, align 4
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @disp_buf(i32* %41, i32 %42)
  %44 = call i32 @unity_send_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32*, i32** %1, align 8
  %47 = call i32 @free(i32* %46)
  %48 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %49 = call i32 @i2c_driver_delete(i32 %48)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @i2c_slave_init(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @i2c_param_config(i32, i32*) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @i2c_slave_write_buffer(i32, i32*, i32, i32) #1

declare dso_local i32 @disp_buf(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
