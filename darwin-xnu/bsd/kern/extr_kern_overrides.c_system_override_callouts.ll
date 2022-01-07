; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_system_override_callouts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_overrides.c_system_override_callouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DBG_THROTTLE = common dso_local global i32 0, align 4
@IO_THROTTLE_DISABLE = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@MACH_CPU_THROTTLE_DISABLE = common dso_local global i32 0, align 4
@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_FAST_JETSAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unknown option to system_override_callouts(): %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @system_override_callouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @system_override_callouts(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %82 [
    i32 128, label %6
    i32 130, label %32
    i32 129, label %58
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load i32, i32* @DBG_THROTTLE, align 4
  %11 = load i32, i32* @IO_THROTTLE_DISABLE, align 4
  %12 = call i32 @FSDBG_CODE(i32 %10, i32 %11)
  %13 = load i32, i32* @DBG_FUNC_START, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.TYPE_2__* (...) @current_proc()
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %14, i32 %17, i32 0, i32 0, i32 0, i32 0)
  br label %29

19:                                               ; preds = %6
  %20 = load i32, i32* @DBG_THROTTLE, align 4
  %21 = load i32, i32* @IO_THROTTLE_DISABLE, align 4
  %22 = call i32 @FSDBG_CODE(i32 %20, i32 %21)
  %23 = load i32, i32* @DBG_FUNC_END, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.TYPE_2__* (...) @current_proc()
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %24, i32 %27, i32 0, i32 0, i32 0, i32 0)
  br label %29

29:                                               ; preds = %19, %9
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @sys_override_io_throttle(i32 %30)
  br label %85

32:                                               ; preds = %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load i32, i32* @DBG_MACH_SCHED, align 4
  %37 = load i32, i32* @MACH_CPU_THROTTLE_DISABLE, align 4
  %38 = call i32 @MACHDBG_CODE(i32 %36, i32 %37)
  %39 = load i32, i32* @DBG_FUNC_START, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.TYPE_2__* (...) @current_proc()
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %40, i32 %43, i32 0, i32 0, i32 0, i32 0)
  br label %55

45:                                               ; preds = %32
  %46 = load i32, i32* @DBG_MACH_SCHED, align 4
  %47 = load i32, i32* @MACH_CPU_THROTTLE_DISABLE, align 4
  %48 = call i32 @MACHDBG_CODE(i32 %46, i32 %47)
  %49 = load i32, i32* @DBG_FUNC_END, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.TYPE_2__* (...) @current_proc()
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %50, i32 %53, i32 0, i32 0, i32 0, i32 0)
  br label %55

55:                                               ; preds = %45, %35
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @sys_override_cpu_throttle(i32 %56)
  br label %85

58:                                               ; preds = %2
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %63 = load i32, i32* @BSD_MEMSTAT_FAST_JETSAM, align 4
  %64 = call i32 @BSDDBG_CODE(i32 %62, i32 %63)
  %65 = load i32, i32* @DBG_FUNC_START, align 4
  %66 = or i32 %64, %65
  %67 = call %struct.TYPE_2__* (...) @current_proc()
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %66, i32 %69, i32 0, i32 0, i32 0, i32 0)
  br label %81

71:                                               ; preds = %58
  %72 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %73 = load i32, i32* @BSD_MEMSTAT_FAST_JETSAM, align 4
  %74 = call i32 @BSDDBG_CODE(i32 %72, i32 %73)
  %75 = load i32, i32* @DBG_FUNC_END, align 4
  %76 = or i32 %74, %75
  %77 = call %struct.TYPE_2__* (...) @current_proc()
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %76, i32 %79, i32 0, i32 0, i32 0, i32 0)
  br label %81

81:                                               ; preds = %71, %61
  br label %85

82:                                               ; preds = %2
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %82, %81, %55, %29
  ret void
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local %struct.TYPE_2__* @current_proc(...) #1

declare dso_local i32 @sys_override_io_throttle(i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local i32 @sys_override_cpu_throttle(i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
