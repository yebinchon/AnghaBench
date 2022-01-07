; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_cpu.c_cpu_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_cpu.c_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i32, %struct.TYPE_12__, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CPU_TYPE_ARM64 = common dso_local global i64 0, align 8
@EndOfAllTime = common dso_local global i32 0, align 4
@BootCpuData = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@CPU_SUBTYPE_ARM64_V8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unknown CPU subtype...\00", align 1
@CPU_THREADTYPE_NONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_init() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = call %struct.TYPE_13__* (...) @getCpuDatap()
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %1, align 8
  %4 = call i64 (...) @exception_stack_pointer()
  %5 = icmp ne i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CPU_TYPE_ARM64, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %0
  %14 = load i64, i64* @CPU_TYPE_ARM64, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = call i32 @timer_call_queue_init(i32* %19)
  %21 = load i32, i32* @EndOfAllTime, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 7
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %26 = icmp eq %struct.TYPE_13__* %25, @BootCpuData
  br i1 %26, label %27, label %31

27:                                               ; preds = %13
  %28 = call i32 (...) @do_cpuid()
  %29 = call i32 (...) @do_cacheid()
  %30 = call i32 (...) @do_mvfpid()
  br label %33

31:                                               ; preds = %13
  %32 = call i32 (...) @pmap_cpu_data_init()
  br label %33

33:                                               ; preds = %31, %27
  %34 = call i32 (...) @do_debugid()
  %35 = call %struct.TYPE_14__* (...) @cpuid_info()
  store %struct.TYPE_14__* %35, %struct.TYPE_14__** %2, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %44 [
    i32 128, label %40
  ]

40:                                               ; preds = %33
  %41 = load i32, i32* @CPU_SUBTYPE_ARM64_V8, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 4
  br label %46

44:                                               ; preds = %33
  %45 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i32, i32* @CPU_THREADTYPE_NONE, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %0
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @TRUE, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  ret void
}

declare dso_local %struct.TYPE_13__* @getCpuDatap(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @exception_stack_pointer(...) #1

declare dso_local i32 @timer_call_queue_init(i32*) #1

declare dso_local i32 @do_cpuid(...) #1

declare dso_local i32 @do_cacheid(...) #1

declare dso_local i32 @do_mvfpid(...) #1

declare dso_local i32 @pmap_cpu_data_init(...) #1

declare dso_local i32 @do_debugid(...) #1

declare dso_local %struct.TYPE_14__* @cpuid_info(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
