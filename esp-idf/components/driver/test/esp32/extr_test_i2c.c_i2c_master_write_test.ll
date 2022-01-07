; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_master_write_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_master_write_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_LENGTH = common dso_local global i32 0, align 4
@I2C_MASTER_NUM = common dso_local global i32 0, align 4
@I2C_MODE_MASTER = common dso_local global i32 0, align 4
@I2C_MASTER_RX_BUF_DISABLE = common dso_local global i32 0, align 4
@I2C_MASTER_TX_BUF_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i2c slave init finish\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"master write\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ready to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i2c_master_write_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_master_write_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @DATA_LENGTH, align 4
  %5 = call i64 @malloc(i32 %4)
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %1, align 8
  %7 = call i32 (...) @i2c_master_init()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @I2C_MASTER_NUM, align 4
  %9 = call i32 @i2c_param_config(i32 %8, i32* %3)
  %10 = call i32 @TEST_ESP_OK(i32 %9)
  %11 = load i32, i32* @I2C_MASTER_NUM, align 4
  %12 = load i32, i32* @I2C_MODE_MASTER, align 4
  %13 = load i32, i32* @I2C_MASTER_RX_BUF_DISABLE, align 4
  %14 = load i32, i32* @I2C_MASTER_TX_BUF_DISABLE, align 4
  %15 = call i32 @i2c_driver_install(i32 %11, i32 %12, i32 %13, i32 %14, i32 0)
  %16 = call i32 @TEST_ESP_OK(i32 %15)
  %17 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @unity_send_signal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %30, %0
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @DATA_LENGTH, align 4
  %22 = sdiv i32 %21, 2
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32, i32* %2, align 4
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load i32, i32* @I2C_MASTER_NUM, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @DATA_LENGTH, align 4
  %37 = sdiv i32 %36, 2
  %38 = call i32 @i2c_master_write_slave(i32 %34, i32* %35, i32 %37)
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i32 @disp_buf(i32* %39, i32 %41)
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @free(i32* %43)
  %45 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @I2C_MASTER_NUM, align 4
  %47 = call i32 @i2c_driver_delete(i32 %46)
  %48 = call i32 @TEST_ESP_OK(i32 %47)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @i2c_master_init(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @i2c_param_config(i32, i32*) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @i2c_master_write_slave(i32, i32*, i32) #1

declare dso_local i32 @disp_buf(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
