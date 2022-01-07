; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_process_event.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/sdio/host/main/extr_app_main.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_ERR_TIMEOUT = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"intr: %08X\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"host int: %d\00", align 1
@HOST_SLC0_RX_NEW_PACKET_INT_ST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"new packet coming\00", align 1
@READ_BUFFER_LEN = common dso_local global i64 0, align 8
@rcv_buffer = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"interrupt but no data can be read\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_NOT_FINISHED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"rx packet error: %08X\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"receive data, size: %d\00", align 1
@ESP_LOG_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @process_event(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @esp_slave_wait_int(i32* %10, i32 0)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @ESP_ERR_TIMEOUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %101

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @ESP_ERROR_CHECK(i64 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i64 @esp_slave_get_intr(i32* %20, i32* %5, i32* %6)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @ESP_ERROR_CHECK(i64 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @esp_slave_clear_intr(i32* %24, i32 %25)
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ESP_ERROR_CHECK(i64 %27)
  %29 = load i32, i32* @TAG, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %47, %17
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @TAG, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 @ESP_LOGI(i32 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %41, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %32

50:                                               ; preds = %32
  store i32 50, i32* %8, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @HOST_SLC0_RX_NEW_PACKET_INT_ST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %99

55:                                               ; preds = %50
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %97
  %59 = load i64, i64* @READ_BUFFER_LEN, align 8
  store i64 %59, i64* %9, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* @rcv_buffer, align 4
  %62 = load i64, i64* @READ_BUFFER_LEN, align 8
  %63 = call i64 @esp_slave_get_packet(i32* %60, i32 %61, i64 %62, i64* %9, i32 50)
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @TAG, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %68, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %98

70:                                               ; preds = %58
  %71 = load i64, i64* %4, align 8
  %72 = load i64, i64* @ESP_OK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @ESP_ERR_NOT_FINISHED, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* @TAG, align 4
  %80 = load i64, i64* %4, align 8
  %81 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %79, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  %82 = load i64, i64* %4, align 8
  store i64 %82, i64* %2, align 8
  br label %101

83:                                               ; preds = %74, %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* @TAG, align 4
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @ESP_LOGI(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64 %86)
  %88 = load i32, i32* @TAG, align 4
  %89 = load i32, i32* @rcv_buffer, align 4
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* @ESP_LOG_INFO, align 4
  %92 = call i32 @ESP_LOG_BUFFER_HEXDUMP(i32 %88, i32 %89, i64 %90, i32 %91)
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @ESP_OK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %98

97:                                               ; preds = %84
  br label %58

98:                                               ; preds = %96, %67
  br label %99

99:                                               ; preds = %98, %50
  %100 = load i64, i64* @ESP_OK, align 8
  store i64 %100, i64* %2, align 8
  br label %101

101:                                              ; preds = %99, %78, %15
  %102 = load i64, i64* %2, align 8
  ret i64 %102
}

declare dso_local i64 @esp_slave_wait_int(i32*, i32) #1

declare dso_local i32 @ESP_ERROR_CHECK(i64) #1

declare dso_local i64 @esp_slave_get_intr(i32*, i32*, i32*) #1

declare dso_local i64 @esp_slave_clear_intr(i32*, i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i64) #1

declare dso_local i64 @esp_slave_get_packet(i32*, i32, i64, i64*, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @ESP_LOG_BUFFER_HEXDUMP(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
