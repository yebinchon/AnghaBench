; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_should_load.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_esp_image_format.c_should_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEEPSLEEP_RESET = common dso_local global i64 0, align 8
@SOC_RTC_IRAM_LOW = common dso_local global i32 0, align 4
@SOC_RTC_IRAM_HIGH = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Skipping RTC fast memory segment at 0x%08x\00", align 1
@SOC_RTC_DRAM_LOW = common dso_local global i32 0, align 4
@SOC_RTC_DRAM_HIGH = common dso_local global i32 0, align 4
@SOC_RTC_DATA_LOW = common dso_local global i32 0, align 4
@SOC_RTC_DATA_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Skipping RTC slow memory segment at 0x%08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @should_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_load(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i64 @rtc_get_reset_reason(i32 0)
  %6 = load i64, i64* @DEEPSLEEP_RESET, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @should_map(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 268435456
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %58

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @SOC_RTC_IRAM_LOW, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SOC_RTC_IRAM_HIGH, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32, i32* @TAG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ESP_LOGD(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %58

32:                                               ; preds = %24, %20
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SOC_RTC_DRAM_LOW, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SOC_RTC_DRAM_HIGH, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @TAG, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @ESP_LOGD(i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %2, align 4
  br label %58

44:                                               ; preds = %36, %32
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SOC_RTC_DATA_LOW, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SOC_RTC_DATA_HIGH, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @TAG, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @ESP_LOGD(i32 %53, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  store i32 0, i32* %2, align 4
  br label %58

56:                                               ; preds = %48, %44
  br label %57

57:                                               ; preds = %56, %17
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %52, %40, %28, %16, %12
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @rtc_get_reset_reason(i32) #1

declare dso_local i64 @should_map(i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
