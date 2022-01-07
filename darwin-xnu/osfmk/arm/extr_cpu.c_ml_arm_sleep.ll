; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_ml_arm_sleep.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_ml_arm_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@BootCpuData = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAX_CPUS = common dso_local global i32 0, align 4
@CpuDataEntries = common dso_local global %struct.TYPE_6__* null, align 8
@ARM_CPU_ON_SLEEP_PATH = common dso_local global i64 0, align 8
@rtclock_base_abstime = common dso_local global i32 0, align 4
@wake_abstime = common dso_local global i32 0, align 4
@suspend_signature = common dso_local global i64 0, align 8
@IOS_STATE = common dso_local global i64 0, align 8
@IOS_STATE_SIZE = common dso_local global i32 0, align 4
@DSB_SY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@DMB_ISH = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @ml_arm_sleep() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_5__* (...) @getCpuDatap()
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %1, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, @BootCpuData
  br i1 %6, label %7, label %43

7:                                                ; preds = %0
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %37, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_CPUS, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CpuDataEntries, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %2, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %40

23:                                               ; preds = %12
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = icmp eq %struct.TYPE_5__* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %37

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %35, %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ARM_CPU_ON_SLEEP_PATH, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %29

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %8

40:                                               ; preds = %22, %8
  %41 = call i32 (...) @ml_get_timebase()
  store i32 %41, i32* @rtclock_base_abstime, align 4
  %42 = load i32, i32* @rtclock_base_abstime, align 4
  store i32 %42, i32* @wake_abstime, align 4
  br label %46

43:                                               ; preds = %0
  %44 = call i32 (...) @platform_cache_disable()
  %45 = call i32 (...) @CleanPoU_Dcache()
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @ARM_CPU_ON_SLEEP_PATH, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %51 = icmp eq %struct.TYPE_5__* %50, @BootCpuData
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = call i32 (...) @platform_cache_disable()
  %54 = call i32 (...) @platform_cache_shutdown()
  %55 = load i64, i64* @suspend_signature, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load i64, i64* @IOS_STATE, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i32, i32* @IOS_STATE_SIZE, align 4
  %60 = call i32 @bcopy(i8* %56, i8* %58, i32 %59)
  br label %65

61:                                               ; preds = %46
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %63 = ptrtoint %struct.TYPE_5__* %62 to i32
  %64 = call i32 @CleanPoC_DcacheRegion(i32 %63, i32 32)
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i32, i32* @DSB_SY, align 4
  %67 = call i32 @__builtin_arm_dsb(i32 %66)
  br label %68

68:                                               ; preds = %71, %65
  %69 = load i64, i64* @TRUE, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %68

72:                                               ; preds = %68
  unreachable
}

declare dso_local %struct.TYPE_5__* @getCpuDatap(...) #1

declare dso_local i32 @ml_get_timebase(...) #1

declare dso_local i32 @platform_cache_disable(...) #1

declare dso_local i32 @CleanPoU_Dcache(...) #1

declare dso_local i32 @platform_cache_shutdown(...) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @CleanPoC_DcacheRegion(i32, i32) #1

declare dso_local i32 @__builtin_arm_dsb(i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
