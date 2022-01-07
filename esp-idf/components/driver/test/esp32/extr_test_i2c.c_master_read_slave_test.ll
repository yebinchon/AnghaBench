; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_master_read_slave_test.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/test/esp32/extr_test_i2c.c_master_read_slave_test.c"
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
@.str.2 = private unnamed_addr constant [12 x i8] c"master read\00", align 1
@RW_TEST_LENGTH = common dso_local global i32 0, align 4
@ACK_VAL = common dso_local global i32 0, align 4
@NACK_VAL = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ready to delete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @master_read_slave_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @master_read_slave_test() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DATA_LENGTH, align 4
  %6 = call i64 @malloc(i32 %5)
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = load i32, i32* @DATA_LENGTH, align 4
  %10 = call i32 @memset(i32* %8, i32 0, i32 %9)
  %11 = call i32 (...) @i2c_master_init()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @I2C_MASTER_NUM, align 4
  %13 = call i32 @i2c_param_config(i32 %12, i32* %2)
  %14 = call i32 @TEST_ESP_OK(i32 %13)
  %15 = load i32, i32* @I2C_MASTER_NUM, align 4
  %16 = load i32, i32* @I2C_MODE_MASTER, align 4
  %17 = load i32, i32* @I2C_MASTER_RX_BUF_DISABLE, align 4
  %18 = load i32, i32* @I2C_MASTER_TX_BUF_DISABLE, align 4
  %19 = call i32 @i2c_driver_install(i32 %15, i32 %16, i32 %17, i32 %18, i32 0)
  %20 = call i32 @TEST_ESP_OK(i32 %19)
  %21 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 (...) @i2c_cmd_link_create()
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @i2c_master_start(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @ESP_SLAVE_ADDR, align 4
  %27 = shl i32 %26, 1
  %28 = load i32, i32* @READ_BIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @ACK_CHECK_EN, align 4
  %31 = call i32 @i2c_master_write_byte(i32 %25, i32 %29, i32 %30)
  %32 = call i32 @unity_send_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @unity_wait_for_signal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %3, align 4
  %35 = load i32*, i32** %1, align 8
  %36 = load i32, i32* @RW_TEST_LENGTH, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* @ACK_VAL, align 4
  %39 = call i32 @i2c_master_read(i32 %34, i32* %35, i32 %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** %1, align 8
  %42 = load i32, i32* @RW_TEST_LENGTH, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = getelementptr inbounds i32, i32* %44, i64 -1
  %46 = load i32, i32* @NACK_VAL, align 4
  %47 = call i32 @i2c_master_read_byte(i32 %40, i32* %45, i32 %46)
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @i2c_master_stop(i32 %48)
  %50 = load i32, i32* @I2C_MASTER_NUM, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @portTICK_RATE_MS, align 4
  %53 = sdiv i32 5000, %52
  %54 = call i32 @i2c_master_cmd_begin(i32 %50, i32 %51, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @i2c_cmd_link_delete(i32 %55)
  %57 = load i32, i32* @portTICK_RATE_MS, align 4
  %58 = sdiv i32 100, %57
  %59 = call i32 @vTaskDelay(i32 %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %80, %0
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @RW_TEST_LENGTH, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i32*, i32** %1, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32*, i32** %1, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @TEST_ASSERT(i32 %78)
  br label %80

80:                                               ; preds = %64
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %60

83:                                               ; preds = %60
  %84 = load i32*, i32** %1, align 8
  %85 = call i32 @free(i32* %84)
  %86 = call i32 @unity_send_signal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* @I2C_MASTER_NUM, align 4
  %88 = call i32 @i2c_driver_delete(i32 %87)
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

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
