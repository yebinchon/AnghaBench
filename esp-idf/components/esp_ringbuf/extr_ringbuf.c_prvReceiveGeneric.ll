; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvReceiveGeneric.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvReceiveGeneric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i8* (%struct.TYPE_8__*, i64*, i64, i64*)* }

@pdFALSE = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i64 0, align 8
@rbBYTE_BUFFER_FLAG = common dso_local global i32 0, align 4
@rbALLOW_SPLIT_FLAG = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i8**, i8**, i64*, i64*, i64, i64)* @prvReceiveGeneric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prvReceiveGeneric(%struct.TYPE_8__* %0, i8** %1, i8** %2, i64* %3, i64* %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %20 = load i64, i64* @pdFALSE, align 8
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* @pdFALSE, align 8
  store i64 %21, i64* %16, align 8
  %22 = call i64 (...) @xTaskGetTickCount()
  %23 = load i64, i64* %14, align 8
  %24 = add nsw i64 %22, %23
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* %14, align 8
  store i64 %25, i64* %18, align 8
  br label %26

26:                                               ; preds = %131, %7
  %27 = load i64, i64* %18, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %135

30:                                               ; preds = %26
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = call i32 @rbGET_RX_SEM_HANDLE(%struct.TYPE_8__* %31)
  %33 = load i64, i64* %18, align 8
  %34 = call i64 @xSemaphoreTake(i32 %32, i64 %33)
  %35 = load i64, i64* @pdTRUE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @pdFALSE, align 8
  store i64 %38, i64* %15, align 8
  br label %135

39:                                               ; preds = %30
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = call i32 @portENTER_CRITICAL(i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = call i64 @prvCheckItemAvail(%struct.TYPE_8__* %43)
  %45 = load i64, i64* @pdTRUE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %123

47:                                               ; preds = %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @rbBYTE_BUFFER_FLAG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  %57 = load i8* (%struct.TYPE_8__*, i64*, i64, i64*)*, i8* (%struct.TYPE_8__*, i64*, i64, i64*)** %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64*, i64** %11, align 8
  %61 = call i8* %57(%struct.TYPE_8__* %58, i64* null, i64 %59, i64* %60)
  %62 = load i8**, i8*** %9, align 8
  store i8* %61, i8** %62, align 8
  br label %71

63:                                               ; preds = %47
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = load i8* (%struct.TYPE_8__*, i64*, i64, i64*)*, i8* (%struct.TYPE_8__*, i64*, i64, i64*)** %65, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = load i64*, i64** %11, align 8
  %69 = call i8* %66(%struct.TYPE_8__* %67, i64* %19, i64 0, i64* %68)
  %70 = load i8**, i8*** %9, align 8
  store i8* %69, i8** %70, align 8
  br label %71

71:                                               ; preds = %63, %54
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @rbALLOW_SPLIT_FLAG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %71
  %79 = load i8**, i8*** %10, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %111

81:                                               ; preds = %78
  %82 = load i64*, i64** %12, align 8
  %83 = icmp ne i64* %82, null
  br i1 %83, label %84, label %111

84:                                               ; preds = %81
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* @pdTRUE, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %84
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 3
  %91 = load i8* (%struct.TYPE_8__*, i64*, i64, i64*)*, i8* (%struct.TYPE_8__*, i64*, i64, i64*)** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = load i64*, i64** %12, align 8
  %94 = call i8* %91(%struct.TYPE_8__* %92, i64* %19, i64 0, i64* %93)
  %95 = load i8**, i8*** %10, align 8
  store i8* %94, i8** %95, align 8
  %96 = load i8**, i8*** %10, align 8
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %9, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ult i8* %97, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @configASSERT(i32 %101)
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* @pdFALSE, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @configASSERT(i32 %106)
  br label %110

108:                                              ; preds = %84
  %109 = load i8**, i8*** %10, align 8
  store i8* null, i8** %109, align 8
  br label %110

110:                                              ; preds = %108, %88
  br label %111

111:                                              ; preds = %110, %81, %78, %71
  %112 = load i64, i64* @pdTRUE, align 8
  store i64 %112, i64* %15, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = load i64, i64* @pdTRUE, align 8
  store i64 %118, i64* %16, align 8
  br label %119

119:                                              ; preds = %117, %111
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = call i32 @portEXIT_CRITICAL(i32* %121)
  br label %135

123:                                              ; preds = %39
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* @portMAX_DELAY, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i64, i64* %17, align 8
  %129 = call i64 (...) @xTaskGetTickCount()
  %130 = sub nsw i64 %128, %129
  store i64 %130, i64* %18, align 8
  br label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = call i32 @portEXIT_CRITICAL(i32* %133)
  br label %26

135:                                              ; preds = %119, %37, %26
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* @pdTRUE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %141 = call i32 @rbGET_RX_SEM_HANDLE(%struct.TYPE_8__* %140)
  %142 = call i32 @xSemaphoreGive(i32 %141)
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i64, i64* %15, align 8
  ret i64 %144
}

declare dso_local i64 @xTaskGetTickCount(...) #1

declare dso_local i64 @xSemaphoreTake(i32, i64) #1

declare dso_local i32 @rbGET_RX_SEM_HANDLE(%struct.TYPE_8__*) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i64 @prvCheckItemAvail(%struct.TYPE_8__*) #1

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local i32 @xSemaphoreGive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
