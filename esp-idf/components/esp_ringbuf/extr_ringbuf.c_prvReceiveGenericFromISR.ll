; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvReceiveGenericFromISR.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_ringbuf/extr_ringbuf.c_prvReceiveGenericFromISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i8* (%struct.TYPE_8__*, i64*, i64, i64*)* }

@pdFALSE = common dso_local global i64 0, align 8
@pdTRUE = common dso_local global i64 0, align 8
@rbBYTE_BUFFER_FLAG = common dso_local global i32 0, align 4
@rbALLOW_SPLIT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, i8**, i8**, i64*, i64*, i64)* @prvReceiveGenericFromISR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prvReceiveGenericFromISR(%struct.TYPE_8__* %0, i8** %1, i8** %2, i64* %3, i64* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* @pdFALSE, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i64, i64* @pdFALSE, align 8
  store i64 %17, i64* %14, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = call i32 @portENTER_CRITICAL_ISR(i32* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = call i64 @prvCheckItemAvail(%struct.TYPE_8__* %21)
  %23 = load i64, i64* @pdTRUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %98

25:                                               ; preds = %6
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @rbBYTE_BUFFER_FLAG, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i8* (%struct.TYPE_8__*, i64*, i64, i64*)*, i8* (%struct.TYPE_8__*, i64*, i64, i64*)** %34, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64*, i64** %10, align 8
  %39 = call i8* %35(%struct.TYPE_8__* %36, i64* null, i64 %37, i64* %38)
  %40 = load i8**, i8*** %8, align 8
  store i8* %39, i8** %40, align 8
  br label %49

41:                                               ; preds = %25
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load i8* (%struct.TYPE_8__*, i64*, i64, i64*)*, i8* (%struct.TYPE_8__*, i64*, i64, i64*)** %43, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = call i8* %44(%struct.TYPE_8__* %45, i64* %15, i64 0, i64* %46)
  %48 = load i8**, i8*** %8, align 8
  store i8* %47, i8** %48, align 8
  br label %49

49:                                               ; preds = %41, %32
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @rbALLOW_SPLIT_FLAG, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %49
  %57 = load i8**, i8*** %9, align 8
  %58 = icmp ne i8** %57, null
  br i1 %58, label %59, label %89

59:                                               ; preds = %56
  %60 = load i64*, i64** %11, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %59
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @pdTRUE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i8* (%struct.TYPE_8__*, i64*, i64, i64*)*, i8* (%struct.TYPE_8__*, i64*, i64, i64*)** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = call i8* %69(%struct.TYPE_8__* %70, i64* %15, i64 0, i64* %71)
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8**, i8*** %9, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ult i8* %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @configASSERT(i32 %79)
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* @pdFALSE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @configASSERT(i32 %84)
  br label %88

86:                                               ; preds = %62
  %87 = load i8**, i8*** %9, align 8
  store i8* null, i8** %87, align 8
  br label %88

88:                                               ; preds = %86, %66
  br label %89

89:                                               ; preds = %88, %59, %56, %49
  %90 = load i64, i64* @pdTRUE, align 8
  store i64 %90, i64* %13, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* @pdTRUE, align 8
  store i64 %96, i64* %14, align 8
  br label %97

97:                                               ; preds = %95, %89
  br label %98

98:                                               ; preds = %97, %6
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = call i32 @portEXIT_CRITICAL_ISR(i32* %100)
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* @pdTRUE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %107 = call i32 @rbGET_RX_SEM_HANDLE(%struct.TYPE_8__* %106)
  %108 = call i32 @xSemaphoreGiveFromISR(i32 %107, i32* null)
  br label %109

109:                                              ; preds = %105, %98
  %110 = load i64, i64* %13, align 8
  ret i64 %110
}

declare dso_local i32 @portENTER_CRITICAL_ISR(i32*) #1

declare dso_local i64 @prvCheckItemAvail(%struct.TYPE_8__*) #1

declare dso_local i32 @configASSERT(i32) #1

declare dso_local i32 @portEXIT_CRITICAL_ISR(i32*) #1

declare dso_local i32 @xSemaphoreGiveFromISR(i32, i32*) #1

declare dso_local i32 @rbGET_RX_SEM_HANDLE(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
