; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_policy_check.c_common_hook.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_policy_check.c_common_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@policy_flags = common dso_local global i32 0, align 4
@CHECK_POLICY_FAIL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CHECK_POLICY_BACKTRACE = common dso_local global i32 0, align 4
@CHECK_POLICY_PANIC = common dso_local global i32 0, align 4
@CHECK_POLICY_PERIODIC = common dso_local global i32 0, align 4
@policy_check_event = common dso_local global i32 0, align 4
@policy_check_period = common dso_local global i32 0, align 4
@policy_check_next = common dso_local global i32 0, align 4
@CLASS_PERIOD_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"calling MACF hook with mutex count %d (event %d) \00", align 1
@CLASS_PERIOD_MULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"calling MACF hook with mutex count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @common_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_hook() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = call i32 (...) @current_thread()
  %4 = call i32 @get_thread_lock_count(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %0
  %7 = load i32, i32* @policy_flags, align 4
  %8 = load i32, i32* @CHECK_POLICY_FAIL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32, i32* @EPERM, align 4
  store i32 %12, i32* %2, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = load i32, i32* @policy_flags, align 4
  %15 = load i32, i32* @CHECK_POLICY_BACKTRACE, align 4
  %16 = load i32, i32* @CHECK_POLICY_PANIC, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load i32, i32* @CHECK_POLICY_BACKTRACE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %13
  %22 = load i32, i32* @policy_flags, align 4
  %23 = load i32, i32* @CHECK_POLICY_PERIODIC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %21
  %27 = load i32, i32* @policy_check_event, align 4
  %28 = load i32, i32* @policy_check_period, align 4
  %29 = srem i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @policy_check_event, align 4
  %33 = load i32, i32* @policy_check_next, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @policy_check_period, align 4
  %37 = load i32, i32* @CLASS_PERIOD_LIMIT, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %1, align 4
  %41 = load i32, i32* @policy_check_event, align 4
  %42 = call i32 @OSReportWithBacktrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  br label %56

44:                                               ; preds = %26
  %45 = load i32, i32* @policy_check_period, align 4
  %46 = load i32, i32* @CLASS_PERIOD_LIMIT, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @CLASS_PERIOD_MULT, align 4
  %50 = load i32, i32* @policy_check_next, align 4
  %51 = mul nsw i32 %50, %49
  store i32 %51, i32* @policy_check_next, align 4
  %52 = load i32, i32* @CLASS_PERIOD_MULT, align 4
  %53 = load i32, i32* @policy_check_period, align 4
  %54 = mul nsw i32 %53, %52
  store i32 %54, i32* @policy_check_period, align 4
  br label %55

55:                                               ; preds = %48, %44
  br label %56

56:                                               ; preds = %55, %43
  br label %61

57:                                               ; preds = %21
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @policy_check_event, align 4
  %60 = call i32 @OSReportWithBacktrace(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %56
  br label %62

62:                                               ; preds = %61, %13
  %63 = load i32, i32* @policy_flags, align 4
  %64 = load i32, i32* @CHECK_POLICY_PANIC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load i32, i32* @policy_check_event, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @policy_check_event, align 4
  br label %73

73:                                               ; preds = %70, %0
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @get_thread_lock_count(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @OSReportWithBacktrace(i8*, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
