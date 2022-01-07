; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_get_power_down_flags.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_sleep_modes.c_get_power_down_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@s_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ESP_PD_DOMAIN_RTC_SLOW_MEM = common dso_local global i64 0, align 8
@ESP_PD_OPTION_AUTO = common dso_local global i64 0, align 8
@_rtc_slow_length = external dso_local global i32, align 4
@RTC_ULP_TRIG_EN = common dso_local global i32 0, align 4
@ESP_PD_OPTION_ON = common dso_local global i8* null, align 8
@ESP_PD_DOMAIN_RTC_FAST_MEM = common dso_local global i64 0, align 8
@ESP_PD_DOMAIN_RTC_PERIPH = common dso_local global i64 0, align 8
@RTC_EXT0_TRIG_EN = common dso_local global i32 0, align 4
@RTC_GPIO_TRIG_EN = common dso_local global i32 0, align 4
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
@RTC_SLEEP_PD_XTAL = common dso_local global i32 0, align 4
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
  br i1 %8, label %9, label %21

9:                                                ; preds = %0
  br i1 icmp ugt (i64 ptrtoint (i32* @_rtc_slow_length to i64), i64 0), label %15, label %10

10:                                               ; preds = %9
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %12 = load i32, i32* @RTC_ULP_TRIG_EN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10, %9
  %16 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %19 = load i64, i64* @ESP_PD_DOMAIN_RTC_SLOW_MEM, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %10, %0
  %22 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %23 = load i64, i64* @ESP_PD_DOMAIN_RTC_FAST_MEM, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ESP_PD_OPTION_AUTO, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %32 = load i64, i64* @ESP_PD_DOMAIN_RTC_FAST_MEM, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %36 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ESP_PD_OPTION_AUTO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %69

41:                                               ; preds = %34
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %43 = load i32, i32* @RTC_EXT0_TRIG_EN, align 4
  %44 = load i32, i32* @RTC_GPIO_TRIG_EN, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %52 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %50, i64* %53, align 8
  br label %68

54:                                               ; preds = %41
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %56 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %57 = load i32, i32* @RTC_ULP_TRIG_EN, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i8*, i8** @ESP_PD_OPTION_OFF, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %65 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %61, %54
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68, %34
  %70 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %71 = load i64, i64* @ESP_PD_DOMAIN_XTAL, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ESP_PD_OPTION_AUTO, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i8*, i8** @ESP_PD_OPTION_OFF, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %80 = load i64, i64* @ESP_PD_DOMAIN_XTAL, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %76, %69
  %83 = bitcast [3 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %83, i8* align 16 bitcast ([3 x i8*]* @__const.get_power_down_flags.option_str to i8*), i64 24, i1 false)
  %84 = load i32, i32* @TAG, align 4
  %85 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %86 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %92 = load i64, i64* @ESP_PD_DOMAIN_RTC_SLOW_MEM, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %98 = load i64, i64* @ESP_PD_DOMAIN_RTC_FAST_MEM, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds [3 x i8*], [3 x i8*]* %1, i64 0, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @ESP_LOGD(i32 %84, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %90, i8* %96, i8* %102)
  store i32 0, i32* %2, align 4
  %104 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %105 = load i64, i64* @ESP_PD_DOMAIN_RTC_FAST_MEM, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %110 = icmp ne i8* %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %82
  %112 = load i32, i32* @RTC_SLEEP_PD_RTC_FAST_MEM, align 4
  %113 = load i32, i32* %2, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %111, %82
  %116 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %117 = load i64, i64* @ESP_PD_DOMAIN_RTC_SLOW_MEM, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %122 = icmp ne i8* %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load i32, i32* @RTC_SLEEP_PD_RTC_SLOW_MEM, align 4
  %125 = load i32, i32* %2, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %115
  %128 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %129 = load i64, i64* @ESP_PD_DOMAIN_RTC_PERIPH, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %134 = icmp ne i8* %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load i32, i32* @RTC_SLEEP_PD_RTC_PERIPH, align 4
  %137 = load i32, i32* %2, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %135, %127
  %140 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 0), align 8
  %141 = load i64, i64* @ESP_PD_DOMAIN_XTAL, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i8*
  %145 = load i8*, i8** @ESP_PD_OPTION_ON, align 8
  %146 = icmp ne i8* %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load i32, i32* @RTC_SLEEP_PD_XTAL, align 4
  %149 = load i32, i32* %2, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %147, %139
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_config, i32 0, i32 1), align 8
  %153 = load i32, i32* @RTC_TOUCH_TRIG_EN, align 4
  %154 = load i32, i32* @RTC_ULP_TRIG_EN, align 4
  %155 = or i32 %153, %154
  %156 = and i32 %152, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %151
  %160 = load i32, i32* %2, align 4
  ret i32 %160
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
