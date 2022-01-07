; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_debugid_explicitly_enabled.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdebug_debugid_explicitly_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KDBG_TYPEFILTER_CHECK = common dso_local global i32 0, align 4
@kdbg_typefilter = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@KDBG_RANGECHECK = common dso_local global i32 0, align 4
@kdlog_beg = common dso_local global i32 0, align 4
@kdlog_end = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@KDBG_VALCHECK = common dso_local global i32 0, align 4
@KDBG_EVENTID_MASK = common dso_local global i32 0, align 4
@kdlog_value1 = common dso_local global i32 0, align 4
@kdlog_value2 = common dso_local global i32 0, align 4
@kdlog_value3 = common dso_local global i32 0, align 4
@kdlog_value4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdebug_debugid_explicitly_enabled(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %5 = load i32, i32* @KDBG_TYPEFILTER_CHECK, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @kdbg_typefilter, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @typefilter_is_debugid_allowed(i32 %9, i32 %10)
  store i32 %11, i32* %2, align 4
  br label %72

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @KDBG_EXTRACT_CLASS(i32 %13)
  %15 = load i64, i64* @DBG_TRACE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %2, align 4
  br label %72

19:                                               ; preds = %12
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %21 = load i32, i32* @KDBG_RANGECHECK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @kdlog_beg, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @kdlog_end, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %2, align 4
  br label %72

34:                                               ; preds = %28
  br label %68

35:                                               ; preds = %19
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %37 = load i32, i32* @KDBG_VALCHECK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @KDBG_EVENTID_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @kdlog_value1, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @KDBG_EVENTID_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @kdlog_value2, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @KDBG_EVENTID_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @kdlog_value3, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @KDBG_EVENTID_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @kdlog_value4, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; preds = %58, %52, %46, %40
  br label %67

67:                                               ; preds = %66, %35
  br label %68

68:                                               ; preds = %67, %34
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* @TRUE, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %70, %64, %32, %17, %8
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @typefilter_is_debugid_allowed(i32, i32) #1

declare dso_local i64 @KDBG_EXTRACT_CLASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
