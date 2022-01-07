; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_calcru.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_calcru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64, i32, i64, i64 }
%struct.timeval = type { i32, i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_17__ = type { i64, i64, i64 }

@MACH_TASK_BASIC_INFO_COUNT = common dso_local global i32 0, align 4
@MACH_TASK_BASIC_INFO = common dso_local global i32 0, align 4
@TASK_THREAD_TIMES_INFO_COUNT = common dso_local global i32 0, align 4
@TASK_THREAD_TIMES_INFO = common dso_local global i32 0, align 4
@TASK_EVENTS_INFO_COUNT = common dso_local global i32 0, align 4
@TASK_EVENTS_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calcru(%struct.proc* %0, %struct.timeval* %1, %struct.timeval* %2, %struct.timeval* %3) #0 {
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.timeval*, align 8
  %7 = alloca %struct.timeval*, align 8
  %8 = alloca %struct.timeval*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_18__, align 4
  %11 = alloca %struct.TYPE_16__, align 4
  %12 = alloca %struct.TYPE_17__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.timeval, align 4
  %17 = alloca %struct.timeval, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.timeval* %1, %struct.timeval** %6, align 8
  store %struct.timeval* %2, %struct.timeval** %7, align 8
  store %struct.timeval* %3, %struct.timeval** %8, align 8
  %18 = load %struct.timeval*, %struct.timeval** %6, align 8
  %19 = call i32 @timerclear(%struct.timeval* %18)
  %20 = load %struct.timeval*, %struct.timeval** %7, align 8
  %21 = call i32 @timerclear(%struct.timeval* %20)
  %22 = load %struct.timeval*, %struct.timeval** %8, align 8
  %23 = icmp ne %struct.timeval* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.timeval*, %struct.timeval** %8, align 8
  %26 = call i32 @timerclear(%struct.timeval* %25)
  br label %27

27:                                               ; preds = %24, %4
  %28 = load %struct.proc*, %struct.proc** %5, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %145

33:                                               ; preds = %27
  %34 = load i32, i32* @MACH_TASK_BASIC_INFO_COUNT, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* @MACH_TASK_BASIC_INFO, align 4
  %37 = ptrtoint %struct.TYPE_18__* %10 to i32
  %38 = call i32 @task_info(i64 %35, i32 %36, i32 %37, i32* %13)
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.timeval*, %struct.timeval** %6, align 8
  %56 = load %struct.timeval*, %struct.timeval** %6, align 8
  %57 = call i32 @timeradd(%struct.timeval* %16, %struct.timeval* %55, %struct.timeval* %56)
  %58 = load %struct.timeval*, %struct.timeval** %7, align 8
  %59 = load %struct.timeval*, %struct.timeval** %7, align 8
  %60 = call i32 @timeradd(%struct.timeval* %17, %struct.timeval* %58, %struct.timeval* %59)
  %61 = load i32, i32* @TASK_THREAD_TIMES_INFO_COUNT, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* @TASK_THREAD_TIMES_INFO, align 4
  %64 = ptrtoint %struct.TYPE_16__* %11 to i32
  %65 = call i32 @task_info(i64 %62, i32 %63, i32 %64, i32* %14)
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 1
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %16, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load %struct.timeval*, %struct.timeval** %6, align 8
  %83 = load %struct.timeval*, %struct.timeval** %6, align 8
  %84 = call i32 @timeradd(%struct.timeval* %16, %struct.timeval* %82, %struct.timeval* %83)
  %85 = load %struct.timeval*, %struct.timeval** %7, align 8
  %86 = load %struct.timeval*, %struct.timeval** %7, align 8
  %87 = call i32 @timeradd(%struct.timeval* %17, %struct.timeval* %85, %struct.timeval* %86)
  %88 = load i32, i32* @TASK_EVENTS_INFO_COUNT, align 4
  store i32 %88, i32* %15, align 4
  %89 = load i64, i64* %9, align 8
  %90 = load i32, i32* @TASK_EVENTS_INFO, align 4
  %91 = ptrtoint %struct.TYPE_17__* %12 to i32
  %92 = call i32 @task_info(i64 %89, i32 %90, i32 %91, i32* %15)
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub nsw i64 %94, %96
  %98 = load %struct.proc*, %struct.proc** %5, align 8
  %99 = getelementptr inbounds %struct.proc, %struct.proc* %98, i32 0, i32 0
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 4
  store i64 %97, i64* %102, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.proc*, %struct.proc** %5, align 8
  %106 = getelementptr inbounds %struct.proc, %struct.proc* %105, i32 0, i32 0
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 3
  store i64 %104, i64* %109, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.proc*, %struct.proc** %5, align 8
  %113 = getelementptr inbounds %struct.proc, %struct.proc* %112, i32 0, i32 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %111, %117
  %119 = load %struct.proc*, %struct.proc** %5, align 8
  %120 = getelementptr inbounds %struct.proc, %struct.proc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  store i64 %118, i64* %123, align 8
  %124 = load %struct.proc*, %struct.proc** %5, align 8
  %125 = getelementptr inbounds %struct.proc, %struct.proc* %124, i32 0, i32 0
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %33
  %132 = load %struct.proc*, %struct.proc** %5, align 8
  %133 = getelementptr inbounds %struct.proc, %struct.proc* %132, i32 0, i32 0
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %131, %33
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.proc*, %struct.proc** %5, align 8
  %141 = getelementptr inbounds %struct.proc, %struct.proc* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  store i32 %139, i32* %144, align 8
  br label %145

145:                                              ; preds = %137, %27
  ret void
}

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i32 @task_info(i64, i32, i32, i32*) #1

declare dso_local i32 @timeradd(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
