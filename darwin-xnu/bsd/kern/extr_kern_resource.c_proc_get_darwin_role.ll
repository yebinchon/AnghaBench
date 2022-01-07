; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_proc_get_darwin_role.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_proc_get_darwin_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EPERM = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@TASK_POLICY_ROLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*)* @proc_get_darwin_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_get_darwin_role(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = call i32 (...) @kauth_cred_get()
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @kauth_cred_proc_ref(i64 %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @kauth_cred_issuser(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @kauth_cred_getruid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @kauth_cred_getuid(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @kauth_cred_getuid(i32 %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @kauth_cred_getruid(i32 %28)
  %30 = load i32, i32* %10, align 4
  %31 = call i64 @kauth_cred_getuid(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EPERM, align 4
  store i32 %34, i32* %7, align 4
  br label %49

35:                                               ; preds = %27, %21, %17, %3
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @proc_task(i64 %41)
  %43 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %44 = load i32, i32* @TASK_POLICY_ROLE, align 4
  %45 = call i32 @proc_get_task_policy(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @proc_task_role_to_darwin_role(i32 %46)
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %33
  %50 = call i32 @kauth_cred_unref(i32* %10)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @kauth_cred_proc_ref(i64) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i64 @kauth_cred_getruid(i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @proc_get_task_policy(i32, i32, i32) #1

declare dso_local i32 @proc_task(i64) #1

declare dso_local i32 @proc_task_role_to_darwin_role(i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
