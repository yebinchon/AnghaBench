; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_freeMemoryIfNeeded.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_freeMemoryIfNeeded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32 }

@C_OK = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MAXMEMORY_NO_EVICTION = common dso_local global i64 0, align 8
@C_ERR = common dso_local global i32 0, align 4
@JOB_STATE_ACKED = common dso_local global i64 0, align 8
@JOB_FLAG_DELIVERED = common dso_local global i32 0, align 4
@DISQUE_NOT_FREED_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"eviction-cycle\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freeMemoryIfNeeded() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = call i32 (...) @getMemoryWarningLevel()
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i32, i32* @C_OK, align 4
  store i32 %14, i32* %1, align 4
  br label %111

15:                                               ; preds = %0
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 0), align 8
  %17 = load i64, i64* @MAXMEMORY_NO_EVICTION, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @C_ERR, align 4
  store i32 %20, i32* %1, align 4
  br label %111

21:                                               ; preds = %15
  %22 = call i64 (...) @zmalloc_used_memory()
  store i64 %22, i64* %2, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 1), align 8
  %24 = sdiv i32 %23, 100
  %25 = mul nsw i32 %24, 95
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @C_OK, align 4
  store i32 %31, i32* %1, align 4
  br label %111

32:                                               ; preds = %21
  %33 = load i64, i64* %2, align 8
  %34 = load i64, i64* %5, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @latencyStartMonitor(i32 %36)
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %104, %32
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %105

42:                                               ; preds = %38
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @server, i32 0, i32 2), align 4
  %44 = call i32* @dictGetRandomKey(i32 %43)
  store i32* %44, i32** %9, align 8
  %45 = call i64 (...) @zmalloc_used_memory()
  store i64 %45, i64* %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = call i64 (...) @evictIdleQueues()
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @C_ERR, align 4
  store i32 %52, i32* %1, align 4
  br label %111

53:                                               ; preds = %48
  br label %83

54:                                               ; preds = %42
  %55 = load i32*, i32** %9, align 8
  %56 = call %struct.TYPE_6__* @dictGetKey(i32* %55)
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %10, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @JOB_STATE_ACKED, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %74, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @JOB_FLAG_DELIVERED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67, %54
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %76 = call i32 @unregisterJob(%struct.TYPE_6__* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %78 = call i32 @freeJob(%struct.TYPE_6__* %77)
  store i32 0, i32* %7, align 4
  br label %82

79:                                               ; preds = %67, %62
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %53
  %84 = call i64 (...) @zmalloc_used_memory()
  %85 = load i64, i64* %8, align 8
  %86 = sub nsw i64 %85, %84
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %4, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @DISQUE_NOT_FREED_MAX_LEN, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %98, label %93

93:                                               ; preds = %83
  %94 = call i32 (...) @mstime()
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %94, %95
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %104

98:                                               ; preds = %93, %83
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @latencyEndMonitor(i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @C_ERR, align 4
  store i32 %103, i32* %1, align 4
  br label %111

104:                                              ; preds = %93
  br label %38

105:                                              ; preds = %38
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @latencyEndMonitor(i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @latencyAddSampleIfNeeded(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @C_OK, align 4
  store i32 %110, i32* %1, align 4
  br label %111

111:                                              ; preds = %105, %98, %51, %30, %19, %13
  %112 = load i32, i32* %1, align 4
  ret i32 %112
}

declare dso_local i32 @getMemoryWarningLevel(...) #1

declare dso_local i64 @zmalloc_used_memory(...) #1

declare dso_local i32 @latencyStartMonitor(i32) #1

declare dso_local i32* @dictGetRandomKey(i32) #1

declare dso_local i64 @evictIdleQueues(...) #1

declare dso_local %struct.TYPE_6__* @dictGetKey(i32*) #1

declare dso_local i32 @unregisterJob(%struct.TYPE_6__*) #1

declare dso_local i32 @freeJob(%struct.TYPE_6__*) #1

declare dso_local i32 @mstime(...) #1

declare dso_local i32 @latencyEndMonitor(i32) #1

declare dso_local i32 @latencyAddSampleIfNeeded(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
