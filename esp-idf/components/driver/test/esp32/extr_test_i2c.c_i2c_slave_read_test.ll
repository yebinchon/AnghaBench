; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_slave_read_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_slave_read_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_LENGTH = common dso_local global i32 0, align 4
@I2C_SLAVE_NUM = common dso_local global i32 0, align 4
@I2C_MODE_SLAVE = common dso_local global i32 0, align 4
@I2C_SLAVE_RX_BUF_LEN = common dso_local global i32 0, align 4
@I2C_SLAVE_TX_BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i2c slave init finish\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"master write\00", align 1
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ready to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i2c_slave_read_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_slave_read_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @DATA_LENGTH, align 4
  %7 = call i64 @malloc(i32 %6)
  %8 = inttoptr i64 %7 to i32*
  store i32* %8, i32** %1, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %9 = call i32 (...) @i2c_slave_init()
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %11 = call i32 @i2c_param_config(i32 %10, i32* %4)
  %12 = call i32 @TEST_ESP_OK(i32 %11)
  %13 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %14 = load i32, i32* @I2C_MODE_SLAVE, align 4
  %15 = load i32, i32* @I2C_SLAVE_RX_BUF_LEN, align 4
  %16 = load i32, i32* @I2C_SLAVE_TX_BUF_LEN, align 4
  %17 = call i32 @i2c_driver_install(i32 %13, i32 %14, i32 %15, i32 %16, i32 0)
  %18 = call i32 @TEST_ESP_OK(i32 %17)
  %19 = call i32 @unity_send_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %0, %34
  %22 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %23 = load i32*, i32** %1, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* @DATA_LENGTH, align 4
  %28 = load i32, i32* @portTICK_RATE_MS, align 4
  %29 = sdiv i32 10000, %28
  %30 = call i32 @i2c_slave_read_buffer(i32 %22, i32* %26, i32 %27, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %38

34:                                               ; preds = %21
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, %35
  store i32 %37, i32* %2, align 4
  br label %21

38:                                               ; preds = %33
  %39 = load i32*, i32** %1, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @disp_buf(i32* %39, i32 %40)
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %56, %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i32*, i32** %1, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @TEST_ASSERT(i32 %54)
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @free(i32* %60)
  %62 = call i32 @unity_send_signal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %64 = call i32 @i2c_driver_delete(i32 %63)
  %65 = call i32 @TEST_ESP_OK(i32 %64)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @i2c_slave_init(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @i2c_param_config(i32, i32*) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @i2c_slave_read_buffer(i32, i32*, i32, i32) #1

declare dso_local i32 @disp_buf(i32*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
