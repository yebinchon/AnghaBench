; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_current_proc_enabled.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_current_proc_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i64 0, align 8
@KDBG_CSC_MASK = common dso_local global i32 0, align 4
@DBG_MACH_SCHED = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@KDBG_PIDCHECK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KDBG_PIDEXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @kdebug_current_proc_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdebug_current_proc_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call i64 (...) @ml_at_interrupt_context()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @TRUE, align 4
  store i32 %9, i32* %2, align 4
  br label %61

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @KDBG_EXTRACT_CLASS(i32 %11)
  %13 = load i64, i64* @DBG_TRACE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @KDBG_CSC_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @DBG_MACH_SCHED, align 4
  %20 = call i32 @MACHDBG_CODE(i32 %19, i32 0)
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15, %10
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %61

24:                                               ; preds = %15
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %26 = load i32, i32* @KDBG_PIDCHECK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = call %struct.TYPE_4__* (...) @current_proc()
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %4, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %2, align 4
  br label %61

40:                                               ; preds = %33, %29
  br label %59

41:                                               ; preds = %24
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 4
  %43 = load i32, i32* @KDBG_PIDEXCLUDE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = call %struct.TYPE_4__* (...) @current_proc()
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %5, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = icmp ne %struct.TYPE_4__* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %2, align 4
  br label %61

57:                                               ; preds = %50, %46
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %40
  %60 = load i32, i32* @TRUE, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %55, %38, %22, %8
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @ml_at_interrupt_context(...) #1

declare dso_local i64 @KDBG_EXTRACT_CLASS(i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local %struct.TYPE_4__* @current_proc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
