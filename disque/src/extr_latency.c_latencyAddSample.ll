; ModuleID = '/home/carl/AnghaBench/disque/src/extr_latency.c_latencyAddSample.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_latency.c_latencyAddSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.latencyTimeSeries = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@server = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@LATENCY_TS_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @latencyAddSample(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.latencyTimeSeries*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call %struct.latencyTimeSeries* @dictFetchValue(i32 %8, i8* %9)
  store %struct.latencyTimeSeries* %10, %struct.latencyTimeSeries** %5, align 8
  %11 = call i64 @time(i32* null)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %13 = icmp eq %struct.latencyTimeSeries* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = call %struct.latencyTimeSeries* @zmalloc(i32 24)
  store %struct.latencyTimeSeries* %15, %struct.latencyTimeSeries** %5, align 8
  %16 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %17 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %19 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %21 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call i32 @memset(%struct.TYPE_4__* %22, i32 0, i32 8)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @server, i32 0, i32 0), align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @zstrdup(i8* %25)
  %27 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %28 = call i32 @dictAdd(i32 %24, i32 %26, %struct.latencyTimeSeries* %27)
  br label %29

29:                                               ; preds = %14, %2
  %30 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %31 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @LATENCY_TS_LEN, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* @LATENCY_TS_LEN, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %39 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %29
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %51 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %49, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %62 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 %60, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %48
  br label %112

69:                                               ; preds = %29
  %70 = call i64 @time(i32* null)
  %71 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %72 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %75 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 %70, i64* %79, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %82 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %85 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i64 %80, i64* %89, align 8
  %90 = load i64, i64* %4, align 8
  %91 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %92 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %69
  %96 = load i64, i64* %4, align 8
  %97 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %98 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %69
  %100 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %101 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %105 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @LATENCY_TS_LEN, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %99
  %110 = load %struct.latencyTimeSeries*, %struct.latencyTimeSeries** %5, align 8
  %111 = getelementptr inbounds %struct.latencyTimeSeries, %struct.latencyTimeSeries* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %112

112:                                              ; preds = %68, %109, %99
  ret void
}

declare dso_local %struct.latencyTimeSeries* @dictFetchValue(i32, i8*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local %struct.latencyTimeSeries* @zmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dictAdd(i32, i32, %struct.latencyTimeSeries*) #1

declare dso_local i32 @zstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
