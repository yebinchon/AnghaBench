; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_slave_read_write_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_slave_read_write_test.c"
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
@.str.2 = private unnamed_addr constant [22 x i8] c"master read and write\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"slave read\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"slave read data is:\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ready to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i2c_slave_read_write_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_slave_read_write_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @DATA_LENGTH, align 4
  %8 = call i64 @malloc(i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @DATA_LENGTH, align 4
  %12 = call i32 @memset(i32* %10, i32 0, i32 %11)
  %13 = load i32, i32* @DATA_LENGTH, align 4
  %14 = call i64 @malloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %2, align 8
  %16 = call i32 (...) @i2c_slave_init()
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %18 = call i32 @i2c_param_config(i32 %17, i32* %4)
  %19 = call i32 @TEST_ESP_OK(i32 %18)
  %20 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %21 = load i32, i32* @I2C_MODE_SLAVE, align 4
  %22 = load i32, i32* @I2C_SLAVE_RX_BUF_LEN, align 4
  %23 = load i32, i32* @I2C_SLAVE_TX_BUF_LEN, align 4
  %24 = call i32 @i2c_driver_install(i32 %20, i32 %21, i32 %22, i32 %23, i32 0)
  %25 = call i32 @TEST_ESP_OK(i32 %24)
  %26 = call i32 @unity_send_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %40, %0
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @DATA_LENGTH, align 4
  %31 = sdiv i32 %30, 2
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %34, 2
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @RW_TEST_LENGTH, align 4
  %47 = load i32, i32* @portTICK_RATE_MS, align 4
  %48 = sdiv i32 2000, %47
  %49 = call i32 @i2c_slave_write_buffer(i32 %44, i32* %45, i32 %46, i32 %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @disp_buf(i32* %50, i32 %51)
  %53 = call i32 @unity_send_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %56 = load i32*, i32** %1, align 8
  %57 = load i32, i32* @RW_TEST_LENGTH, align 4
  %58 = load i32, i32* @portTICK_RATE_MS, align 4
  %59 = sdiv i32 1000, %58
  %60 = call i32 @i2c_slave_read_buffer(i32 %55, i32* %56, i32 %57, i32 %59)
  store i32 %60, i32* %3, align 4
  %61 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32*, i32** %1, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @disp_buf(i32* %62, i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %80, %43
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @RW_TEST_LENGTH, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i32*, i32** %1, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = srem i32 %75, 3
  %77 = icmp eq i32 %74, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @TEST_ASSERT(i32 %78)
  br label %80

80:                                               ; preds = %69
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %65

83:                                               ; preds = %65
  %84 = load i32*, i32** %2, align 8
  %85 = call i32 @free(i32* %84)
  %86 = load i32*, i32** %1, align 8
  %87 = call i32 @free(i32* %86)
  %88 = call i32 @unity_send_signal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @I2C_SLAVE_NUM, align 4
  %90 = call i32 @i2c_driver_delete(i32 %89)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @i2c_slave_init(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @i2c_param_config(i32, i32*) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @i2c_slave_write_buffer(i32, i32*, i32, i32) #1

declare dso_local i32 @disp_buf(i32*, i32) #1

declare dso_local i32 @i2c_slave_read_buffer(i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
