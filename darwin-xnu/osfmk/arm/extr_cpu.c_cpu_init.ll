; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_cpu_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, %struct.TYPE_11__, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@CPU_TYPE_ARM = common dso_local global i64 0, align 8
@EndOfAllTime = common dso_local global i32 0, align 4
@BootCpuData = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@CPU_SUBTYPE_ARM_V4T = common dso_local global i32 0, align 4
@CPU_VID_INTEL = common dso_local global i32 0, align 4
@CPU_SUBTYPE_ARM_XSCALE = common dso_local global i32 0, align 4
@CPU_SUBTYPE_ARM_V5TEJ = common dso_local global i32 0, align 4
@CPU_SUBTYPE_ARM_V6 = common dso_local global i32 0, align 4
@CPU_SUBTYPE_ARM_V7 = common dso_local global i32 0, align 4
@CPU_SUBTYPE_ARM_V7F = common dso_local global i32 0, align 4
@CPU_SUBTYPE_ARM_V7S = common dso_local global i32 0, align 4
@CPU_SUBTYPE_ARM_V7K = common dso_local global i32 0, align 4
@CPU_SUBTYPE_ARM_ALL = common dso_local global i32 0, align 4
@CPU_THREADTYPE_NONE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_init() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = call %struct.TYPE_12__* (...) @getCpuDatap()
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %1, align 8
  %4 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %5 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CPU_TYPE_ARM, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %84

9:                                                ; preds = %0
  %10 = load i64, i64* @CPU_TYPE_ARM, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = call i32 @timer_call_queue_init(i32* %15)
  %17 = load i32, i32* @EndOfAllTime, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %22 = icmp eq %struct.TYPE_12__* %21, @BootCpuData
  br i1 %22, label %23, label %27

23:                                               ; preds = %9
  %24 = call i32 (...) @do_cpuid()
  %25 = call i32 (...) @do_cacheid()
  %26 = call i32 (...) @do_mvfpid()
  br label %29

27:                                               ; preds = %9
  %28 = call i32 (...) @pmap_cpu_data_init()
  br label %29

29:                                               ; preds = %27, %23
  %30 = call i32 (...) @do_debugid()
  %31 = call %struct.TYPE_13__* (...) @cpuid_info()
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %2, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %76 [
    i32 136, label %36
    i32 135, label %36
    i32 134, label %40
    i32 133, label %40
    i32 132, label %56
    i32 131, label %60
    i32 130, label %64
    i32 128, label %68
    i32 129, label %72
  ]

36:                                               ; preds = %29, %29
  %37 = load i32, i32* @CPU_SUBTYPE_ARM_V4T, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  br label %80

40:                                               ; preds = %29, %29
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CPU_VID_INTEL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* @CPU_SUBTYPE_ARM_XSCALE, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  br label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @CPU_SUBTYPE_ARM_V5TEJ, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %80

56:                                               ; preds = %29
  %57 = load i32, i32* @CPU_SUBTYPE_ARM_V6, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  br label %80

60:                                               ; preds = %29
  %61 = load i32, i32* @CPU_SUBTYPE_ARM_V7, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  br label %80

64:                                               ; preds = %29
  %65 = load i32, i32* @CPU_SUBTYPE_ARM_V7F, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  br label %80

68:                                               ; preds = %29
  %69 = load i32, i32* @CPU_SUBTYPE_ARM_V7S, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 6
  store i32 %69, i32* %71, align 4
  br label %80

72:                                               ; preds = %29
  %73 = load i32, i32* @CPU_SUBTYPE_ARM_V7K, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  br label %80

76:                                               ; preds = %29
  %77 = load i32, i32* @CPU_SUBTYPE_ARM_ALL, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %72, %68, %64, %60, %56, %55, %36
  %81 = load i32, i32* @CPU_THREADTYPE_NONE, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %80, %0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @TRUE, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 2
  store i32 0, i32* %103, align 4
  ret void
}

declare dso_local %struct.TYPE_12__* @getCpuDatap(...) #1

declare dso_local i32 @timer_call_queue_init(i32*) #1

declare dso_local i32 @do_cpuid(...) #1

declare dso_local i32 @do_cacheid(...) #1

declare dso_local i32 @do_mvfpid(...) #1

declare dso_local i32 @pmap_cpu_data_init(...) #1

declare dso_local i32 @do_debugid(...) #1

declare dso_local %struct.TYPE_13__* @cpuid_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
