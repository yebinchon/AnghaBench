; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_master_write_read_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_i2c_master_write_read_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_LENGTH = common dso_local global i32 0, align 4
@I2C_MASTER_NUM = common dso_local global i32 0, align 4
@I2C_MODE_MASTER = common dso_local global i32 0, align 4
@I2C_MASTER_RX_BUF_DISABLE = common dso_local global i32 0, align 4
@I2C_MASTER_TX_BUF_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"i2c slave init finish\00", align 1
@ESP_SLAVE_ADDR = common dso_local global i32 0, align 4
@READ_BIT = common dso_local global i32 0, align 4
@ACK_CHECK_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"slave write\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"master read and write\00", align 1
@RW_TEST_LENGTH = common dso_local global i32 0, align 4
@ACK_VAL = common dso_local global i32 0, align 4
@NACK_VAL = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"slave read\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ready to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i2c_master_write_read_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_master_write_read_test() #0 {
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
  %16 = call i32 (...) @i2c_master_init()
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @I2C_MASTER_NUM, align 4
  %18 = call i32 @i2c_param_config(i32 %17, i32* %3)
  %19 = call i32 @TEST_ESP_OK(i32 %18)
  %20 = load i32, i32* @I2C_MASTER_NUM, align 4
  %21 = load i32, i32* @I2C_MODE_MASTER, align 4
  %22 = load i32, i32* @I2C_MASTER_RX_BUF_DISABLE, align 4
  %23 = load i32, i32* @I2C_MASTER_TX_BUF_DISABLE, align 4
  %24 = call i32 @i2c_driver_install(i32 %20, i32 %21, i32 %22, i32 %23, i32 0)
  %25 = call i32 @TEST_ESP_OK(i32 %24)
  %26 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (...) @i2c_cmd_link_create()
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @i2c_master_start(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ESP_SLAVE_ADDR, align 4
  %32 = shl i32 %31, 1
  %33 = load i32, i32* @READ_BIT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ACK_CHECK_EN, align 4
  %36 = call i32 @i2c_master_write_byte(i32 %30, i32 %34, i32 %35)
  %37 = call i32 @unity_send_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %4, align 4
  %40 = load i32*, i32** %1, align 8
  %41 = load i32, i32* @RW_TEST_LENGTH, align 4
  %42 = load i32, i32* @ACK_VAL, align 4
  %43 = call i32 @i2c_master_read(i32 %39, i32* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32*, i32** %1, align 8
  %46 = load i32, i32* @RW_TEST_LENGTH, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* @NACK_VAL, align 4
  %50 = call i32 @i2c_master_read_byte(i32 %44, i32* %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @i2c_master_stop(i32 %51)
  %53 = load i32, i32* @I2C_MASTER_NUM, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @portTICK_RATE_MS, align 4
  %56 = sdiv i32 5000, %55
  %57 = call i32 @i2c_master_cmd_begin(i32 %53, i32 %54, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @i2c_cmd_link_delete(i32 %58)
  %60 = load i32, i32* @portTICK_RATE_MS, align 4
  %61 = sdiv i32 100, %60
  %62 = call i32 @vTaskDelay(i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = load i32, i32* @RW_TEST_LENGTH, align 4
  %65 = call i32 @disp_buf(i32* %63, i32 %64)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %81, %0
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @RW_TEST_LENGTH, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load i32*, i32** %1, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sdiv i32 %76, 2
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @TEST_ASSERT(i32 %79)
  br label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %66

84:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %96, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @DATA_LENGTH, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = srem i32 %90, 3
  %92 = load i32*, i32** %2, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %6, align 4
  br label %85

99:                                               ; preds = %85
  %100 = load i32, i32* @portTICK_RATE_MS, align 4
  %101 = sdiv i32 100, %100
  %102 = call i32 @vTaskDelay(i32 %101)
  %103 = load i32, i32* @I2C_MASTER_NUM, align 4
  %104 = load i32*, i32** %2, align 8
  %105 = load i32, i32* @RW_TEST_LENGTH, align 4
  %106 = call i32 @i2c_master_write_slave(i32 %103, i32* %104, i32 %105)
  %107 = load i32*, i32** %2, align 8
  %108 = call i32 @free(i32* %107)
  %109 = load i32*, i32** %1, align 8
  %110 = call i32 @free(i32* %109)
  %111 = call i32 @unity_send_signal(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %112 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %113 = load i32, i32* @I2C_MASTER_NUM, align 4
  %114 = call i32 @i2c_driver_delete(i32 %113)
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @i2c_master_init(...) #1

declare dso_local i32 @TEST_ESP_OK(i32) #1

declare dso_local i32 @i2c_param_config(i32, i32*) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @unity_wait_for_signal(i8*) #1

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @unity_send_signal(i8*) #1

declare dso_local i32 @i2c_master_read(i32, i32*, i32, i32) #1

declare dso_local i32 @i2c_master_read_byte(i32, i32*, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i32 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @disp_buf(i32*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @i2c_master_write_slave(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
