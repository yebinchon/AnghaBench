; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_cpu_idle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu.c_cpu_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i64, i32*, i32 }

@idle_enable = common dso_local global i32 0, align 4
@SIGPdisabled = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@wfi_fast = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @cpu_idle() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call %struct.TYPE_3__* (...) @getCpuDatap()
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %1, align 8
  store i32 0, i32* %2, align 4
  %5 = load i32, i32* @idle_enable, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SIGPdisabled, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7, %0
  %15 = call i32 (...) @Idle_load_context()
  br label %16

16:                                               ; preds = %14, %7
  %17 = call i32 (...) @SetIdlePop()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = call i32 (...) @Idle_load_context()
  br label %21

21:                                               ; preds = %19, %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @kernel_pmap, align 4
  %26 = call i32 @pmap_switch_user_ttb(i32 %25)
  %27 = call i32 (...) @current_thread()
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 7
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = call i32 @arm_debug_set(i32* null)
  br label %36

36:                                               ; preds = %34, %21
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 6
  store i32* null, i32** %38, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32 (i32, i32, i32*)*
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 %47(i32 %50, i32 %51, i32* %2)
  br label %53

53:                                               ; preds = %43, %36
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %53
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  store i32 0, i32* %64, align 8
  br label %70

65:                                               ; preds = %58
  %66 = load i32, i32* %2, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = call i32 @clock_absolutetime_interval_to_deadline(i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %62
  %71 = call i32 (...) @timer_resync_deadlines()
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 (...) @SetIdlePop()
  br label %79

79:                                               ; preds = %77, %70
  br label %80

80:                                               ; preds = %79, %53
  %81 = call i32 (...) @platform_cache_idle_enter()
  %82 = load i64, i64* @wfi_fast, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @cpu_idle_wfi(i32 %83)
  %85 = call i32 (...) @platform_cache_idle_exit()
  %86 = load i32, i32* @TRUE, align 4
  %87 = call i32 @ClearIdlePop(i32 %86)
  %88 = load i32, i32* @FALSE, align 4
  %89 = call i32 @cpu_idle_exit(i32 %88)
  unreachable
}

declare dso_local %struct.TYPE_3__* @getCpuDatap(...) #1

declare dso_local i32 @Idle_load_context(...) #1

declare dso_local i32 @SetIdlePop(...) #1

declare dso_local i32 @pmap_switch_user_ttb(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @arm_debug_set(i32*) #1

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i32, i32*) #1

declare dso_local i32 @timer_resync_deadlines(...) #1

declare dso_local i32 @platform_cache_idle_enter(...) #1

declare dso_local i32 @cpu_idle_wfi(i32) #1

declare dso_local i32 @platform_cache_idle_exit(...) #1

declare dso_local i32 @ClearIdlePop(i32) #1

declare dso_local i32 @cpu_idle_exit(i32) #1

attributes #0 = { noinline noreturn nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
