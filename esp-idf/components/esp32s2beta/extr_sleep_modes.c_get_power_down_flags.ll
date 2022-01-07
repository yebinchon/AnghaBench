; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_sleep_modes.c_get_power_down_flags.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32s2beta/extr_sleep_modes.c_get_power_down_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@s_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ESP_PD_DOMAIN_RTC_SLOW_MEM = common dso_local global i64 0, align 8
@ESP_PD_OPTION_AUTO = common dso_local global i64 0, align 8
@_rtc_data_end = external dso_local global i32, align 4
@_rtc_data_start = external dso_local global i32, align 4
@_rtc_bss_end = external dso_local global i32, align 4
@_rtc_bss_start = external dso_local global i32, align 4
@RTC_ULP_TRIG_EN = common dso_local global i32 0, align 4
@ESP_PD_OPTION_ON = common dso_local global i8* null, align 8
@ESP_PD_DOMAIN_RTC_FAST_MEM = common dso_local global i64 0, align 8
@ESP_PD_DOMAIN_RTC_PERIPH = common dso_local global i64 0, align 8
@RTC_EXT0_TRIG_EN = common dso_local global i32 0, align 4
@RTC_TOUCH_TRIG_EN = common dso_local global i32 0, align 4
@ESP_PD_OPTION_OFF = common dso_local global i8* null, align 8
@ESP_PD_DOMAIN_XTAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"AUTO(OFF)\00", align 1
@__const.get_power_down_flags.option_str = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)], align 16
@TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"RTC_PERIPH: %s, RTC_SLOW_MEM: %s, RTC_FAST_MEM: %s\00", align 1
@RTC_SLEEP_PD_RTC_FAST_MEM = common dso_local global i32 0, align 4
@RTC_SLEEP_PD_RTC_SLOW_MEM = common dso_local global i32 0, align 4
@RTC_SLEEP_PD_RTC_PERIPH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_power_down_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_power_down_flags() #0 {
  %1 = alloca [3 x i8*], align 16
  %2 = alloca i32, align 4
  %3 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %4 = load i64, i64* @ESP_PD_DOMAIN_RTC_SLOW_MEM, align 8
  %5 = getelementptr inbounds i64, i64* %3, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ESP_PD_OPTION_AUTO, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %0
  br i1 icmp ugt (i32* @_rtc_data_end, i32* @_rtc_data_start), label %16, label %10

10:                                               ; preds = %9
  br i1 icmp ugt (i32* @_rtc_bss_end, i32* @_rtc_bss_start), label %16, label %11

11:                                               ; preds = %10
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %13 = load i32, i32* @RTC_ULP_TRIG_EN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11, %10, %9
  %17 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %20 = load i64, i64* @ESP_PD_DOMAIN_RTC_SLOW_MEM, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 %18, i64* %21, align 8
  br label %22

22:                                               ; preds = %16, %11, %0
  %23 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %24 = load i64, i64* @ESP_PD_DOMAIN_RTC_FAST_MEM, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ESP_PD_OPTION_AUTO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %33 = load i64, i64* @ESP_PD_DOMAIN_RTC_FAST_MEM, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 %31, i64* %34, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %37 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ESP_PD_OPTION_AUTO, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %35
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %44 = load i32, i32* @RTC_EXT0_TRIG_EN, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %49 = ptrtoint i8* %48 to i64
  %50 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %51 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %49, i64* %52, align 8
  br label %67

53:                                               ; preds = %42
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %55 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %56 = load i32, i32* @RTC_ULP_TRIG_EN, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i8*, i8** @ESP_PD_OPTION_OFF, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %64 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %62, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %53
  br label %67

67:                                               ; preds = %66, %47
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %70 = load i64, i64* @ESP_PD_DOMAIN_XTAL, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ESP_PD_OPTION_AUTO, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i8*, i8** @ESP_PD_OPTION_OFF, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %79 = load i64, i64* @ESP_PD_DOMAIN_XTAL, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 %77, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %68
  %82 = bitcast [3 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %82, i8* align 16 bitcast ([3 x i8*]* @__const.get_power_down_flags.option_str to i8*), i64 24, i1 false)
  %83 = load i32, i32* @TAG, align 4
  %84 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %85 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %91 = load i64, i64* @ESP_PD_DOMAIN_RTC_SLOW_MEM, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %97 = load i64, i64* @ESP_PD_DOMAIN_RTC_FAST_MEM, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @ESP_LOGD(i32 %83, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %89, i8* %95, i8* %101)
  store i32 0, i32* %2, align 4
  %103 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %104 = load i64, i64* @ESP_PD_DOMAIN_RTC_FAST_MEM, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %109 = icmp ne i8* %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %81
  %111 = load i32, i32* @RTC_SLEEP_PD_RTC_FAST_MEM, align 4
  %112 = load i32, i32* %2, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %110, %81
  %115 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %116 = load i64, i64* @ESP_PD_DOMAIN_RTC_SLOW_MEM, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %121 = icmp ne i8* %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load i32, i32* @RTC_SLEEP_PD_RTC_SLOW_MEM, align 4
  %124 = load i32, i32* %2, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %122, %114
  %127 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %128 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %133 = icmp ne i8* %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %126
  %135 = load i32, i32* @RTC_SLEEP_PD_RTC_PERIPH, align 4
  %136 = load i32, i32* %2, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %126
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i8*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
