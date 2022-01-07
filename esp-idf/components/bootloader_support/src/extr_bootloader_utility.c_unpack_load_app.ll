; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_unpack_load_app.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_utility.c_unpack_load_app.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64*, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@SOC_DROM_LOW = common dso_local global i64 0, align 8
@SOC_DROM_HIGH = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@MAP_ERR_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"DROM\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Mapping segment %d as %s\00", align 1
@SOC_IROM_LOW = common dso_local global i64 0, align 8
@SOC_IROM_HIGH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"IROM\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"calling set_cache_and_start_app\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @unpack_load_app to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unpack_load_app(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %99, %1
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %102

18:                                               ; preds = %11
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i64 %23
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SOC_DROM_LOW, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %18
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SOC_DROM_HIGH, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %30
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @TAG, align 4
  %41 = load i32, i32* @MAP_ERR_MSG, align 4
  %42 = call i32 @ESP_LOGE(i32 %40, i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @TAG, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %3, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %4, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %47, %30, %18
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SOC_IROM_LOW, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %98

67:                                               ; preds = %61
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SOC_IROM_HIGH, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %98

73:                                               ; preds = %67
  %74 = load i64, i64* %6, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @TAG, align 4
  %78 = load i32, i32* @MAP_ERR_MSG, align 4
  %79 = call i32 @ESP_LOGE(i32 %77, i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %84

80:                                               ; preds = %73
  %81 = load i32, i32* @TAG, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %6, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %7, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %8, align 8
  br label %98

98:                                               ; preds = %84, %67, %61
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %11

102:                                              ; preds = %11
  %103 = load i32, i32* @TAG, align 4
  %104 = call i32 (i32, i8*, ...) @ESP_LOGD(i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* %5, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @set_cache_and_start_app(i64 %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, i32 %114)
  ret void
}

declare dso_local i32 @ESP_LOGE(i32, i32, i8*) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, ...) #1

declare dso_local i32 @set_cache_and_start_app(i64, i64, i64, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
