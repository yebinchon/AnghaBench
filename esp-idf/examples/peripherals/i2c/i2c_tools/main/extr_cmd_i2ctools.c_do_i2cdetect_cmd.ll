; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_do_i2cdetect_cmd.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_do_i2cdetect_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i2c_port = common dso_local global i32 0, align 4
@I2C_MODE_MASTER = common dso_local global i32 0, align 4
@I2C_MASTER_RX_BUF_DISABLE = common dso_local global i32 0, align 4
@I2C_MASTER_TX_BUF_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02x: \00", align 1
@stdout = common dso_local global i32 0, align 4
@WRITE_BIT = common dso_local global i32 0, align 4
@ACK_CHECK_EN = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@ESP_ERR_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"UU \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @do_i2cdetect_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_i2cdetect_cmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = call i32 (...) @i2c_master_driver_initialize()
  %11 = load i32, i32* @i2c_port, align 4
  %12 = load i32, i32* @I2C_MODE_MASTER, align 4
  %13 = load i32, i32* @I2C_MASTER_RX_BUF_DISABLE, align 4
  %14 = load i32, i32* @I2C_MASTER_TX_BUF_DISABLE, align 4
  %15 = call i32 @i2c_driver_install(i32 %11, i32 %12, i32 %13, i32 %14, i32 0)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %72, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 128
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %67, %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 16
  br i1 %25, label %26, label %70

26:                                               ; preds = %23
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fflush(i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  %32 = call i32 (...) @i2c_cmd_link_create()
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @i2c_master_start(i32 %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 1
  %38 = load i32, i32* @WRITE_BIT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @ACK_CHECK_EN, align 4
  %41 = call i32 @i2c_master_write_byte(i32 %35, i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @i2c_master_stop(i32 %42)
  %44 = load i32, i32* @i2c_port, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @portTICK_RATE_MS, align 4
  %47 = sdiv i32 50, %46
  %48 = call i64 @i2c_master_cmd_begin(i32 %44, i32 %45, i32 %47)
  store i64 %48, i64* %9, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @i2c_cmd_link_delete(i32 %49)
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @ESP_OK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %26
  %55 = load i32, i32* %5, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %66

57:                                               ; preds = %26
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* @ESP_ERR_TIMEOUT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %65

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %61
  br label %66

66:                                               ; preds = %65, %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %23

70:                                               ; preds = %23
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 16
  store i32 %74, i32* %6, align 4
  br label %17

75:                                               ; preds = %17
  %76 = load i32, i32* @i2c_port, align 4
  %77 = call i32 @i2c_driver_delete(i32 %76)
  ret i32 0
}

declare dso_local i32 @i2c_master_driver_initialize(...) #1

declare dso_local i32 @i2c_driver_install(i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @i2c_cmd_link_create(...) #1

declare dso_local i32 @i2c_master_start(i32) #1

declare dso_local i32 @i2c_master_write_byte(i32, i32, i32) #1

declare dso_local i32 @i2c_master_stop(i32) #1

declare dso_local i64 @i2c_master_cmd_begin(i32, i32, i32) #1

declare dso_local i32 @i2c_cmd_link_delete(i32) #1

declare dso_local i32 @i2c_driver_delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
