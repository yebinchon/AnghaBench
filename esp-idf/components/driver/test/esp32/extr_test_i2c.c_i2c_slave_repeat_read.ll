; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_slave_repeat_read.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_slave_repeat_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_LENGTH = common dso_local global i32 0, align 4
@I2C_SLAVE_NUM = common dso_local global i32 0, align 4
@I2C_MODE_SLAVE = common dso_local global i32 0, align 4
@I2C_SLAVE_RX_BUF_LEN = common dso_local global i32 0, align 4
@I2C_SLAVE_TX_BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i2c slave init finish\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"master write\00", align 1
@RW_TEST_LENGTH = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"data: %d, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ready to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i2c_slave_repeat_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_slave_repeat_read() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 3, i32* %2, align 4
  %8 = load i32, i32* @DATA_LENGTH, align 4
  %9 = mul nsw i32 %8, 3
  %10 = call i64 @malloc(i32 %9)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = call i32 (...) @i2c_slave_init()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %14 = call i32 @i2c_param_config(i32 %13, i32* %4)
  %15 = call i32 @TEST_ESP_OK(i32 %14)
  %16 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %17 = load i32, i32* @I2C_MODE_SLAVE, align 4
  %18 = load i32, i32* @I2C_SLAVE_RX_BUF_LEN, align 4
  %19 = load i32, i32* @I2C_SLAVE_TX_BUF_LEN, align 4
  %20 = call i32 @i2c_driver_install(i32 %16, i32 %17, i32 %18, i32 %19, i32 0)
  %21 = call i32 @TEST_ESP_OK(i32 %20)
  %22 = call i32 @unity_send_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %0, %38
  %25 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* @RW_TEST_LENGTH, align 4
  %31 = mul nsw i32 %30, 3
  %32 = load i32, i32* @portTICK_RATE_MS, align 4
  %33 = sdiv i32 10000, %32
  %34 = call i32 @i2c_slave_read_buffer(i32 %25, i32* %29, i32 %31, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %42

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %1, align 4
  br label %24

42:                                               ; preds = %37
  %43 = load i32*, i32** %3, align 8
  %44 = load i32, i32* %1, align 4
  %45 = call i32 @disp_buf(i32* %43, i32 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %90, %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %93

50:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @RW_TEST_LENGTH, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @RW_TEST_LENGTH, align 4
  %59 = mul nsw i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %56, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = srem i32 %65, 129
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  %69 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load i32*, i32** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @RW_TEST_LENGTH, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %70, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = srem i32 %79, 129
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  %83 = icmp eq i32 %78, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @TEST_ASSERT(i32 %84)
  br label %86

86:                                               ; preds = %55
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %51

89:                                               ; preds = %51
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %46

93:                                               ; preds = %46
  %94 = load i32*, i32** %3, align 8
  %95 = call i32 @free(i32* %94)
  %96 = call i32 @unity_send_signal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %98 = call i32 @i2c_driver_delete(i32 %97)
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

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
