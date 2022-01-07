; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_validate_track_flags.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_validate_track_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@P_DIRTY_TERMINATED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PROC_DIRTY_ALLOW_IDLE_EXIT = common dso_local global i32 0, align 4
@PROC_DIRTY_TRACK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PROC_DIRTY_LAUNCH_IN_PROGRESS = common dso_local global i32 0, align 4
@PROC_DIRTY_DEFER = common dso_local global i32 0, align 4
@PROC_DIRTY_DEFER_ALWAYS = common dso_local global i32 0, align 4
@PROC_DIRTY_ALLOWS_IDLE_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, i32)* @memorystatus_validate_track_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memorystatus_validate_track_flags(%struct.proc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.proc*, %struct.proc** %4, align 8
  %7 = getelementptr inbounds %struct.proc, %struct.proc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @P_DIRTY_TERMINATED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  store i32 %13, i32* %3, align 4
  br label %68

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @PROC_DIRTY_ALLOW_IDLE_EXIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @PROC_DIRTY_TRACK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %68

26:                                               ; preds = %19, %14
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PROC_DIRTY_LAUNCH_IN_PROGRESS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PROC_DIRTY_TRACK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %31, %26
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PROC_DIRTY_DEFER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PROC_DIRTY_DEFER_ALWAYS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %68

50:                                               ; preds = %43, %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PROC_DIRTY_DEFER, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @PROC_DIRTY_DEFER_ALWAYS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55, %50
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @PROC_DIRTY_ALLOWS_IDLE_EXIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %60, %55
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %65, %48, %36, %24, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
