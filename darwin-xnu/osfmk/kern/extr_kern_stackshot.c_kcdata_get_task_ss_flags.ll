; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kcdata_get_task_ss_flags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_stackshot.c_kcdata_get_task_ss_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.TYPE_8__, i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }

@kUser64_p = common dso_local global i32 0, align 4
@kTerminatedSnapshot = common dso_local global i32 0, align 4
@kPidSuspended = common dso_local global i32 0, align 4
@kFrozen = common dso_local global i32 0, align 4
@kTaskDarwinBG = common dso_local global i32 0, align 4
@TASK_FOREGROUND_APPLICATION = common dso_local global i64 0, align 8
@kTaskIsForeground = common dso_local global i32 0, align 4
@kTaskIsBoosted = common dso_local global i32 0, align 4
@kTaskIsSuppressed = common dso_local global i32 0, align 4
@kTaskTALEngaged = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@kTaskAllowIdleExit = common dso_local global i32 0, align 4
@kTaskIsDirty = common dso_local global i32 0, align 4
@kTaskIsDirtyTracked = common dso_local global i32 0, align 4
@kTaskIsImpDonor = common dso_local global i32 0, align 4
@kTaskIsLiveImpDonor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @kcdata_get_task_ss_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcdata_get_task_ss_flags(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = call i64 @task_has_64Bit_addr(%struct.TYPE_11__* %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @kUser64_p, align 4
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = call i64 @task_is_a_corpse(%struct.TYPE_11__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @proc_exiting(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %18, %13
  %29 = load i32, i32* @kTerminatedSnapshot, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @kPidSuspended, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @kFrozen, align 4
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @kTaskDarwinBG, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TASK_FOREGROUND_APPLICATION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @kTaskIsForeground, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @kTaskIsBoosted, align 4
  %79 = load i32, i32* %3, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* @kTaskIsSuppressed, align 4
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %81
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @kTaskTALEngaged, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @workqueue_get_pwq_state_kdp(i32 %104)
  %106 = and i32 7, %105
  %107 = shl i32 %106, 17
  %108 = load i32, i32* %3, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @task_has_64Bit_addr(%struct.TYPE_11__*) #1

declare dso_local i64 @task_is_a_corpse(%struct.TYPE_11__*) #1

declare dso_local i64 @proc_exiting(i32) #1

declare dso_local i32 @workqueue_get_pwq_state_kdp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
