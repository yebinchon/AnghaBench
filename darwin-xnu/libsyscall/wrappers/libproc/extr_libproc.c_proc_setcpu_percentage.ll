; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_setcpu_percentage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_setcpu_percentage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PROC_POLICY_SCOPE_PROCESS = common dso_local global i32 0, align 4
@PROC_POLICY_ACTION_APPLY = common dso_local global i32 0, align 4
@PROC_POLICY_RESOURCE_USAGE = common dso_local global i32 0, align 4
@PROC_POLICY_RUSAGE_CPU = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_setcpu_percentage(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @bzero(%struct.TYPE_3__* %8, i32 8)
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @PROC_POLICY_SCOPE_PROCESS, align 4
  %15 = load i32, i32* @PROC_POLICY_ACTION_APPLY, align 4
  %16 = load i32, i32* @PROC_POLICY_RESOURCE_USAGE, align 4
  %17 = load i32, i32* @PROC_POLICY_RUSAGE_CPU, align 4
  %18 = bitcast %struct.TYPE_3__* %8 to i32*
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @__process_policy(i32 %14, i32 %15, i32 %16, i32 %17, i32* %18, i32 %19, i32 0)
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @bzero(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @__process_policy(i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
