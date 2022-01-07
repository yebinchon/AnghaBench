; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_do_background_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_do_background_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@TASK_POLICY_INTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_EXTERNAL = common dso_local global i32 0, align 4
@TASK_POLICY_ENABLE = common dso_local global i32 0, align 4
@TASK_POLICY_DISABLE = common dso_local global i32 0, align 4
@TASK_POLICY_DARWIN_BG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.proc*, i32)* @do_background_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_background_proc(%struct.proc* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = call i32 (...) @kauth_cred_get()
  store i32 %12, i32* %8, align 4
  %13 = load %struct.proc*, %struct.proc** %5, align 8
  %14 = call i32 @kauth_cred_proc_ref(%struct.proc* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @kauth_cred_issuser(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @kauth_cred_getruid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @kauth_cred_getuid(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i64 @kauth_cred_getuid(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @kauth_cred_getruid(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @kauth_cred_getuid(i32 %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %7, align 4
  br label %59

36:                                               ; preds = %28, %22, %18, %3
  %37 = load %struct.proc*, %struct.proc** %4, align 8
  %38 = load %struct.proc*, %struct.proc** %5, align 8
  %39 = icmp eq %struct.proc* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @TASK_POLICY_INTERNAL, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @TASK_POLICY_EXTERNAL, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  switch i32 %46, label %50 [
    i32 129, label %47
    i32 128, label %49
  ]

47:                                               ; preds = %44
  %48 = load i32, i32* @TASK_POLICY_ENABLE, align 4
  store i32 %48, i32* %11, align 4
  br label %52

49:                                               ; preds = %44
  br label %59

50:                                               ; preds = %44
  %51 = load i32, i32* @TASK_POLICY_DISABLE, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = load %struct.proc*, %struct.proc** %5, align 8
  %54 = call i32 @proc_task(%struct.proc* %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @TASK_POLICY_DARWIN_BG, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @proc_set_task_policy(i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %49, %34
  %60 = call i32 @kauth_cred_unref(i32* %9)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.proc*) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i64 @kauth_cred_getruid(i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @proc_set_task_policy(i32, i32, i32, i32) #1

declare dso_local i32 @proc_task(%struct.proc*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
