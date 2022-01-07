; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/esp32s2beta/extr_rtc_tempsensor.c_temp_sensor_set_config.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/esp32s2beta/extr_rtc_tempsensor.c_temp_sensor_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@dac_offset = common dso_local global %struct.TYPE_10__* null, align 8
@SENS = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@TSENS_XPD_WAIT_DEFAULT = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Config temperature range [%d\C2\B0C ~ %d\C2\B0C], error < %d\C2\B0C\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @temp_sensor_set_config(i64 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_9__, align 8
  %4 = bitcast %struct.TYPE_9__* %3 to { i64, i32 }*
  %5 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %4, i32 0, i32 1
  store i32 %1, i32* %6, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dac_offset, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SENS, i32 0, i32 1, i32 2), align 4
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SENS, i32 0, i32 1, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SENS, i32 0, i32 1, i32 0), align 4
  %15 = load i32, i32* @TSENS_XPD_WAIT_DEFAULT, align 4
  store i32 %15, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SENS, i32 0, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SENS, i32 0, i32 0, i32 0), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SENS, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @SENS, i32 0, i32 0, i32 1), align 4
  %16 = load i32, i32* @TAG, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dac_offset, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dac_offset, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @dac_offset, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ESP_LOGI(i32 %16, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %28, i32 %34)
  %36 = load i32, i32* @ESP_OK, align 4
  ret i32 %36
}

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
