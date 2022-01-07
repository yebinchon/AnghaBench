; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_trace_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_trace_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kd_early_done = common dso_local global i32 0, align 4
@KTRACE_KDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"start_kern_tracing\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"error from kdbg_reinit, kernel tracing not started\0A\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@KDEBUG_ENABLE_TRACE = common dso_local global i32 0, align 4
@kdebug_serial = common dso_local global i64 0, align 8
@KDEBUG_ENABLE_SERIAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"kernel tracing started with %u events\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdebug_trace_start(i32 %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 1, i32* @kd_early_done, align 4
  br label %81

15:                                               ; preds = %4
  %16 = call i32 (...) @ktrace_start_single_threaded()
  %17 = call i32 (...) @kdbg_lock_init()
  %18 = load i32, i32* @KTRACE_KDEBUG, align 4
  %19 = call i32 @ktrace_kernel_configure(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @kdbg_set_nkdbufs(i32 %20)
  %22 = call i32 @kernel_debug_string_early(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i64 @kdbg_reinit(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %79

28:                                               ; preds = %15
  %29 = load i64, i64* %7, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @disable_wrap(i32* %9, i32* %10)
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = call i64 @kdbg_initialize_typefilter(i32* null)
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @kdbg_set_typefilter_string(i8* %47)
  %49 = call i32 (...) @kdbg_enable_typefilter()
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %36, %33
  %52 = load i64, i64* @FALSE, align 8
  %53 = call i64 @ml_set_interrupts_enabled(i64 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (...) @kdbg_thrmap_init()
  br label %58

58:                                               ; preds = %56, %51
  %59 = load i32, i32* @TRUE, align 4
  %60 = load i32, i32* @KDEBUG_ENABLE_TRACE, align 4
  %61 = load i64, i64* @kdebug_serial, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @KDEBUG_ENABLE_SERIAL, align 4
  br label %66

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = or i32 %60, %67
  %69 = call i32 @kdbg_set_tracing_enabled(i32 %59, i32 %68)
  %70 = load i64, i64* %8, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %66
  %73 = call i32 (...) @kernel_debug_early_end()
  br label %74

74:                                               ; preds = %72, %66
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @ml_set_interrupts_enabled(i64 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %26
  %80 = call i32 (...) @ktrace_end_single_threaded()
  br label %81

81:                                               ; preds = %79, %14
  ret void
}

declare dso_local i32 @ktrace_start_single_threaded(...) #1

declare dso_local i32 @kdbg_lock_init(...) #1

declare dso_local i32 @ktrace_kernel_configure(i32) #1

declare dso_local i32 @kdbg_set_nkdbufs(i32) #1

declare dso_local i32 @kernel_debug_string_early(i8*) #1

declare dso_local i64 @kdbg_reinit(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @disable_wrap(i32*, i32*) #1

declare dso_local i64 @kdbg_initialize_typefilter(i32*) #1

declare dso_local i32 @kdbg_set_typefilter_string(i8*) #1

declare dso_local i32 @kdbg_enable_typefilter(...) #1

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i32 @kdbg_thrmap_init(...) #1

declare dso_local i32 @kdbg_set_tracing_enabled(i32, i32) #1

declare dso_local i32 @kernel_debug_early_end(...) #1

declare dso_local i32 @ktrace_end_single_threaded(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
