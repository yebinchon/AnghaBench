; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_can_use_foreground_hw.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_can_use_foreground_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@PROC_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@PROC_FGHW_ERROR = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global i64 0, align 8
@PROC_FGHW_NO_ORIGINATOR = common dso_local global i32 0, align 4
@PROC_FGHW_NO_VOUCHER_ATTR = common dso_local global i32 0, align 4
@PROC_FGHW_DAEMON_NO_VOUCHER = common dso_local global i32 0, align 4
@PROC_FGHW_VOUCHER_ERROR = common dso_local global i32 0, align 4
@PROC_FGHW_ORIGINATOR_BACKGROUND = common dso_local global i32 0, align 4
@PROC_FGHW_DAEMON_OK = common dso_local global i32 0, align 4
@COALITION_NULL = common dso_local global i32 0, align 4
@COALITION_TYPE_JETSAM = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@PROC_FGHW_DAEMON_LEADER = common dso_local global i32 0, align 4
@PROC_FGHW_LEADER_BACKGROUND = common dso_local global i32 0, align 4
@PROC_FGHW_LEADER_NONUI = common dso_local global i32 0, align 4
@PROC_FGHW_OK = common dso_local global i32 0, align 4
@PROC_FLAG_APPLICATION = common dso_local global i32 0, align 4
@TASK_POLICY_DARWIN_BG = common dso_local global i32 0, align 4
@TASK_POLICY_ROLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_can_use_foreground_hw(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PROC_NULL, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @PROC_FGHW_ERROR, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i64, i64* @TASK_NULL, align 8
  store i64 %16, i64* %13, align 8
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  store i32 136, i32* %10, align 4
  %21 = load i32, i32* @PROC_FGHW_ERROR, align 4
  store i32 %21, i32* %11, align 4
  br label %56

22:                                               ; preds = %4
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.TYPE_6__* @proc_find(i32 %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PROC_NULL, align 8
  %27 = icmp eq %struct.TYPE_6__* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  store i32 134, i32* %10, align 4
  %29 = load i32, i32* @PROC_FGHW_ERROR, align 4
  store i32 %29, i32* %11, align 4
  br label %56

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = call %struct.TYPE_6__* (...) @current_proc()
  %33 = icmp ne %struct.TYPE_6__* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 136, i32* %10, align 4
  br label %56

35:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  %36 = call i32 @proc_get_originatorbgstate(i32* %12)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %45 [
    i32 0, label %38
    i32 134, label %39
    i32 135, label %41
    i32 136, label %43
  ]

38:                                               ; preds = %35
  br label %47

39:                                               ; preds = %35
  %40 = load i32, i32* @PROC_FGHW_NO_ORIGINATOR, align 4
  store i32 %40, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %56

41:                                               ; preds = %35
  %42 = load i32, i32* @PROC_FGHW_NO_VOUCHER_ATTR, align 4
  store i32 %42, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %56

43:                                               ; preds = %35
  %44 = load i32, i32* @PROC_FGHW_DAEMON_NO_VOUCHER, align 4
  store i32 %44, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %56

45:                                               ; preds = %35
  %46 = load i32, i32* @PROC_FGHW_VOUCHER_ERROR, align 4
  store i32 %46, i32* %11, align 4
  br label %56

47:                                               ; preds = %38
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @PROC_FGHW_ORIGINATOR_BACKGROUND, align 4
  store i32 %51, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @PROC_FGHW_DAEMON_OK, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %50
  br label %56

56:                                               ; preds = %55, %45, %43, %41, %39, %34, %28, %20
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* @TASK_NULL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @task_deallocate(i64 %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PROC_NULL, align 8
  %66 = icmp ne %struct.TYPE_6__* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %69 = call i32 @proc_rele(%struct.TYPE_6__* %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp uge i64 %72, 4
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @copyout(i32* %11, i32 %78, i32 4)
  br label %80

80:                                               ; preds = %77, %74, %70
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local %struct.TYPE_6__* @proc_find(i32) #1

declare dso_local %struct.TYPE_6__* @current_proc(...) #1

declare dso_local i32 @proc_get_originatorbgstate(i32*) #1

declare dso_local i32 @task_deallocate(i64) #1

declare dso_local i32 @proc_rele(%struct.TYPE_6__*) #1

declare dso_local i32 @copyout(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
