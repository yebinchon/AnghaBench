; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_cpu.c_cpu_timebase_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_cpu.c_cpu_timebase_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i8*, i8*, i32, i32, i32* }

@rtclock_timebase_func = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@rtclock_timebase_addr = common dso_local global i64 0, align 8
@rtclock_timebase_val = common dso_local global i64 0, align 8
@BootCpuData = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@wake_abstime = common dso_local global i64 0, align 8
@rtclock_base_abstime = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_timebase_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.TYPE_5__* (...) @getCpuDatap()
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 7
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rtclock_timebase_func, i32 0, i32 2), align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 7
  store i32* %10, i32** %12, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rtclock_timebase_func, i32 0, i32 1), align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rtclock_timebase_func, i32 0, i32 0), align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* @rtclock_timebase_addr, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* @rtclock_timebase_val, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %9, %1
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, @BootCpuData
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* @wake_abstime, align 8
  %35 = call i64 (...) @ml_get_hwclock()
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* @rtclock_base_abstime, align 8
  br label %37

37:                                               ; preds = %33, %30, %27
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  store i32 2147483647, i32* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* @rtclock_base_abstime, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  ret void
}

declare dso_local %struct.TYPE_5__* @getCpuDatap(...) #1

declare dso_local i64 @ml_get_hwclock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
