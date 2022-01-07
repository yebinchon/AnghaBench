; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_handle_debugger_trap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_debug.c_handle_debugger_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@not_in_kdp = common dso_local global i32 0, align 4
@debugger_current_op = common dso_local global i64 0, align 8
@CPUDEBUGGERSYNC = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@CPUDEBUGGERRET = common dso_local global i64 0, align 8
@CPUDEBUGGERCOUNT = common dso_local global i32 0, align 4
@kernel_debugger_entry_count = common dso_local global i32 0, align 4
@CPUDEBUGGEROP = common dso_local global i64 0, align 8
@DBOP_NONE = common dso_local global i64 0, align 8
@DBOP_BREAKPOINT = common dso_local global i64 0, align 8
@DBOP_PANIC = common dso_local global i64 0, align 8
@DBOP_DEBUGGER = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@debugger_safe_to_return = common dso_local global i32 0, align 4
@debugger_panic_str = common dso_local global i32* null, align 8
@CPUPANICSTR = common dso_local global i32* null, align 8
@CPUPANICARGS = common dso_local global i32* null, align 8
@debugger_panic_args = common dso_local global i32* null, align 8
@CPUPANICDATAPTR = common dso_local global i32* null, align 8
@debugger_panic_data = common dso_local global i32* null, align 8
@CPUDEBUGGERMSG = common dso_local global i32* null, align 8
@debugger_message = common dso_local global i32* null, align 8
@CPUPANICCALLER = common dso_local global i32 0, align 4
@debugger_panic_caller = common dso_local global i32 0, align 4
@CPUPANICOPTS = common dso_local global i64 0, align 8
@debugger_panic_options = common dso_local global i64 0, align 8
@KDP_EVENT_ENTER = common dso_local global i32 0, align 4
@DBOP_STACKSHOT = common dso_local global i64 0, align 8
@KDP_EVENT_EXIT = common dso_local global i32 0, align 4
@DBOP_RESET_PGO_COUNTERS = common dso_local global i64 0, align 8
@SERIALMODE_OUTPUT = common dso_local global i32 0, align 4
@serialmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_debugger_trap(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %12 = load i32, i32* @not_in_kdp, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* @debugger_current_op, align 8
  store i64 %13, i64* %11, align 8
  %14 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 0)
  %15 = call i32 (...) @DebuggerLock()
  %16 = load i32, i32* @CPUDEBUGGERSYNC, align 4
  %17 = call i64 @DebuggerHaltOtherCores(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 1)
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @KERN_SUCCESS, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* @CPUDEBUGGERRET, align 8
  %24 = call i32 (...) @DebuggerUnlock()
  br label %99

25:                                               ; preds = %4
  %26 = load i32, i32* @CPUDEBUGGERCOUNT, align 4
  store i32 %26, i32* @kernel_debugger_entry_count, align 4
  %27 = load i64, i64* @CPUDEBUGGEROP, align 8
  %28 = load i64, i64* @DBOP_NONE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @DBOP_BREAKPOINT, align 8
  store i64 %31, i64* @debugger_current_op, align 8
  br label %54

32:                                               ; preds = %25
  %33 = load i64, i64* @debugger_current_op, align 8
  %34 = load i64, i64* @DBOP_PANIC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* @debugger_current_op, align 8
  %38 = load i64, i64* @DBOP_DEBUGGER, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %32
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* @debugger_safe_to_return, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i64, i64* @CPUDEBUGGEROP, align 8
  store i64 %43, i64* @debugger_current_op, align 8
  %44 = load i32*, i32** @debugger_panic_str, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32*, i32** @CPUPANICSTR, align 8
  store i32* %47, i32** @debugger_panic_str, align 8
  %48 = load i32*, i32** @CPUPANICARGS, align 8
  store i32* %48, i32** @debugger_panic_args, align 8
  %49 = load i32*, i32** @CPUPANICDATAPTR, align 8
  store i32* %49, i32** @debugger_panic_data, align 8
  %50 = load i32*, i32** @CPUDEBUGGERMSG, align 8
  store i32* %50, i32** @debugger_message, align 8
  %51 = load i32, i32* @CPUPANICCALLER, align 4
  store i32 %51, i32* @debugger_panic_caller, align 4
  br label %52

52:                                               ; preds = %46, %42
  %53 = load i64, i64* @CPUPANICOPTS, align 8
  store i64 %53, i64* @debugger_panic_options, align 8
  br label %54

54:                                               ; preds = %52, %30
  %55 = load i64, i64* @DBOP_NONE, align 8
  store i64 %55, i64* @CPUDEBUGGEROP, align 8
  %56 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 2)
  %57 = load i32, i32* @KDP_EVENT_ENTER, align 4
  %58 = call i32 @kdp_callouts(i32 %57)
  store i32 0, i32* @not_in_kdp, align 4
  %59 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 3)
  %60 = load i64, i64* @debugger_current_op, align 8
  %61 = load i64, i64* @DBOP_BREAKPOINT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @kdp_raise_exception(i32 %64, i32 %65, i32 %66, i8* %67)
  br label %82

69:                                               ; preds = %54
  %70 = load i64, i64* @debugger_current_op, align 8
  %71 = load i64, i64* @DBOP_STACKSHOT, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i64 (...) @do_stackshot()
  store i64 %74, i64* @CPUDEBUGGERRET, align 8
  br label %81

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @debugger_collect_diagnostics(i32 %76, i32 %77, i32 %78, i8* %79)
  br label %81

81:                                               ; preds = %75, %73
  br label %82

82:                                               ; preds = %81, %63
  %83 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 4)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* @not_in_kdp, align 4
  %85 = load i32, i32* @KDP_EVENT_EXIT, align 4
  %86 = call i32 @kdp_callouts(i32 %85)
  %87 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 5)
  %88 = load i64, i64* @debugger_current_op, align 8
  %89 = load i64, i64* @DBOP_BREAKPOINT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  store i32* null, i32** @debugger_panic_str, align 8
  store i32* null, i32** @debugger_panic_args, align 8
  store i32* null, i32** @debugger_panic_data, align 8
  store i64 0, i64* @debugger_panic_options, align 8
  store i32* null, i32** @debugger_message, align 8
  br label %92

92:                                               ; preds = %91, %82
  %93 = load i64, i64* %11, align 8
  store i64 %93, i64* @debugger_current_op, align 8
  %94 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 6)
  %95 = call i32 (...) @DebuggerResumeOtherCores()
  %96 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 7)
  %97 = call i32 (...) @DebuggerUnlock()
  %98 = call i32 @DEBUGGER_TRAP_TIMESTAMP(i32 8)
  br label %99

99:                                               ; preds = %92, %22
  ret void
}

declare dso_local i32 @DEBUGGER_TRAP_TIMESTAMP(i32) #1

declare dso_local i32 @DebuggerLock(...) #1

declare dso_local i64 @DebuggerHaltOtherCores(i32) #1

declare dso_local i32 @DebuggerUnlock(...) #1

declare dso_local i32 @kdp_callouts(i32) #1

declare dso_local i32 @kdp_raise_exception(i32, i32, i32, i8*) #1

declare dso_local i64 @do_stackshot(...) #1

declare dso_local i32 @debugger_collect_diagnostics(i32, i32, i32, i8*) #1

declare dso_local i32 @DebuggerResumeOtherCores(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
