; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_clear_errors.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_clear_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@DBG_BSD_MEMSTAT = common dso_local global i32 0, align 4
@BSD_MEMSTAT_CLEAR_ERRORS = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@P_MEMSTAT_ERROR = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @memorystatus_clear_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_clear_errors() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %4 = load i32, i32* @BSD_MEMSTAT_CLEAR_ERRORS, align 4
  %5 = call i32 @BSDDBG_CODE(i32 %3, i32 %4)
  %6 = load i32, i32* @DBG_FUNC_START, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %7, i32 0, i32 0, i32 0, i32 0, i32 0)
  %9 = call i32 (...) @proc_list_lock()
  %10 = load i32, i32* @TRUE, align 4
  %11 = call %struct.TYPE_5__* @memorystatus_get_first_proc_locked(i32* %2, i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %1, align 8
  br label %12

12:                                               ; preds = %29, %0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load i32, i32* @P_MEMSTAT_ERROR, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call %struct.TYPE_5__* @memorystatus_get_next_proc_locked(i32* %2, %struct.TYPE_5__* %30, i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %1, align 8
  br label %12

33:                                               ; preds = %12
  %34 = call i32 (...) @proc_list_unlock()
  %35 = load i32, i32* @DBG_BSD_MEMSTAT, align 4
  %36 = load i32, i32* @BSD_MEMSTAT_CLEAR_ERRORS, align 4
  %37 = call i32 @BSDDBG_CODE(i32 %35, i32 %36)
  %38 = load i32, i32* @DBG_FUNC_END, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %39, i32 0, i32 0, i32 0, i32 0, i32 0)
  ret void
}

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BSDDBG_CODE(i32, i32) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local %struct.TYPE_5__* @memorystatus_get_first_proc_locked(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @memorystatus_get_next_proc_locked(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
