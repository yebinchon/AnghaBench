; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc_set_i2s_data_pattern.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_rtc_module.c_adc_set_i2s_data_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }

@ADC_UNIT_1 = common dso_local global i32 0, align 4
@ADC1_CHANNEL_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ADC1 channel error\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ADC_WIDTH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ADC bit width error\00", align 1
@ADC_ATTEN_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ADC Atten Err\00", align 1
@rtc_spinlock = common dso_local global i32 0, align 4
@SYSCON = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ADC_UNIT_2 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @adc_set_i2s_data_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc_set_i2s_data_pattern(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ADC_CHECK_UNIT(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ADC_UNIT_1, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @ADC1_CHANNEL_MAX, align 8
  %22 = icmp slt i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %25 = call i32 @RTC_MODULE_CHECK(i32 %23, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %18, %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @ADC_WIDTH_MAX, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %32 = call i32 @RTC_MODULE_CHECK(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @ADC_ATTEN_MAX, align 4
  %35 = icmp slt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %38 = call i32 @RTC_MODULE_CHECK(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = call i32 @portENTER_CRITICAL(i32* @rtc_spinlock)
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 4
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 %42, 2
  %44 = or i32 %41, %43
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %45, 0
  %47 = or i32 %44, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ADC_UNIT_1, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %79

52:                                               ; preds = %26
  %53 = load i32, i32* %7, align 4
  %54 = srem i32 %53, 4
  %55 = sub nsw i32 3, %54
  %56 = mul nsw i32 %55, 8
  %57 = shl i32 255, %56
  %58 = xor i32 %57, -1
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSCON, i32 0, i32 0), align 8
  %60 = load i32, i32* %7, align 4
  %61 = sdiv i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %58
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %7, align 4
  %68 = srem i32 %67, 4
  %69 = sub nsw i32 3, %68
  %70 = mul nsw i32 %69, 8
  %71 = shl i32 %66, %70
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSCON, i32 0, i32 0), align 8
  %73 = load i32, i32* %7, align 4
  %74 = sdiv i32 %73, 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %71
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %52, %26
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @ADC_UNIT_2, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %111

84:                                               ; preds = %79
  %85 = load i32, i32* %7, align 4
  %86 = srem i32 %85, 4
  %87 = sub nsw i32 3, %86
  %88 = mul nsw i32 %87, 8
  %89 = shl i32 255, %88
  %90 = xor i32 %89, -1
  %91 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSCON, i32 0, i32 1), align 8
  %92 = load i32, i32* %7, align 4
  %93 = sdiv i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %90
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = srem i32 %99, 4
  %101 = sub nsw i32 3, %100
  %102 = mul nsw i32 %101, 8
  %103 = shl i32 %98, %102
  %104 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @SYSCON, i32 0, i32 1), align 8
  %105 = load i32, i32* %7, align 4
  %106 = sdiv i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %103
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %84, %79
  %112 = call i32 @portEXIT_CRITICAL(i32* @rtc_spinlock)
  %113 = load i32, i32* @ESP_OK, align 4
  ret i32 %113
}

declare dso_local i32 @ADC_CHECK_UNIT(i32) #1

declare dso_local i32 @RTC_MODULE_CHECK(i32, i8*, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
