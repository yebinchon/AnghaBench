; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_cpu.c_ml_arm_sleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_cpu.c_ml_arm_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64* }
%struct.TYPE_6__ = type { i64 }

@BootCpuData = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@CpuDataEntries = common dso_local global %struct.TYPE_6__* null, align 8
@ARM_CPU_ON_SLEEP_PATH = common dso_local global i64 0, align 8
@wake_abstime = common dso_local global i32 0, align 4
@CORESIGHT_ED = common dso_local global i64 0, align 8
@ARM_DBG_LOCK_ACCESS_KEY = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGLAR = common dso_local global i64 0, align 8
@ARM_DEBUG_OFFSET_DBGPRCR = common dso_local global i64 0, align 8
@DMB_ISH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@arm64_stall_sleep = common dso_local global i64 0, align 8
@sleepTokenBuffer = common dso_local global i64 0, align 8
@suspend_signature = common dso_local global i64 0, align 8

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @ml_arm_sleep() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call %struct.TYPE_5__* (...) @getCpuDatap()
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %1, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %7 = icmp eq %struct.TYPE_5__* %6, @BootCpuData
  br i1 %7, label %8, label %43

8:                                                ; preds = %0
  %9 = call i32 (...) @ml_get_max_cpu_number()
  store i32 %9, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %38, %8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CpuDataEntries, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %2, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = icmp eq %struct.TYPE_5__* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %27 = icmp eq %struct.TYPE_5__* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %14
  br label %38

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %36, %29
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ARM_CPU_ON_SLEEP_PATH, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %30

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %10

41:                                               ; preds = %10
  %42 = call i32 (...) @ml_get_timebase()
  store i32 %42, i32* @wake_abstime, align 4
  br label %45

43:                                               ; preds = %0
  %44 = call i32 (...) @CleanPoU_Dcache()
  br label %45

45:                                               ; preds = %43, %41
  %46 = load i64, i64* @ARM_CPU_ON_SLEEP_PATH, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %50 = icmp eq %struct.TYPE_5__* %49, @BootCpuData
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @CORESIGHT_ED, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %51
  %60 = load i64, i64* @ARM_DBG_LOCK_ACCESS_KEY, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @CORESIGHT_ED, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ARM_DEBUG_OFFSET_DBGLAR, align 8
  %68 = add nsw i64 %66, %67
  %69 = inttoptr i64 %68 to i64*
  store volatile i64 %60, i64* %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* @CORESIGHT_ED, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ARM_DEBUG_OFFSET_DBGPRCR, align 8
  %77 = add nsw i64 %75, %76
  %78 = inttoptr i64 %77 to i64*
  store volatile i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %59, %51
  %80 = call i32 (...) @arm64_prepare_for_sleep()
  br label %114

81:                                               ; preds = %45
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %83 = ptrtoint %struct.TYPE_5__* %82 to i64
  %84 = call i32 @CleanPoU_DcacheRegion(i64 %83, i32 16)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @CORESIGHT_ED, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %112

92:                                               ; preds = %81
  %93 = load i64, i64* @ARM_DBG_LOCK_ACCESS_KEY, align 8
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @CORESIGHT_ED, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ARM_DEBUG_OFFSET_DBGLAR, align 8
  %101 = add nsw i64 %99, %100
  %102 = inttoptr i64 %101 to i64*
  store volatile i64 %93, i64* %102, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @CORESIGHT_ED, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ARM_DEBUG_OFFSET_DBGPRCR, align 8
  %110 = add nsw i64 %108, %109
  %111 = inttoptr i64 %110 to i64*
  store volatile i64 0, i64* %111, align 8
  br label %112

112:                                              ; preds = %92, %81
  %113 = call i32 (...) @arm64_prepare_for_sleep()
  br label %114

114:                                              ; preds = %112, %79
  unreachable
}

declare dso_local %struct.TYPE_5__* @getCpuDatap(...) #1

declare dso_local i32 @ml_get_max_cpu_number(...) #1

declare dso_local i32 @ml_get_timebase(...) #1

declare dso_local i32 @CleanPoU_Dcache(...) #1

declare dso_local i32 @arm64_prepare_for_sleep(...) #1

declare dso_local i32 @CleanPoU_DcacheRegion(i64, i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
