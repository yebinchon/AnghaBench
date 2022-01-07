; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_proc_set_darwin_role.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_proc_set_darwin_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PRIV_SETPRIORITY_DARWIN_ROLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@PROC_FLAG_APPLICATION = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@TASK_POLICY_ATTRIBUTE = common dso_local global i32 0, align 4
@TASK_POLICY_ROLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @proc_set_darwin_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_set_darwin_role(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = call i32 (...) @kauth_cred_get()
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @kauth_cred_proc_ref(i64 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @kauth_cred_issuser(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %42, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @kauth_cred_getruid(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @kauth_cred_getuid(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @kauth_cred_getuid(i32 %25)
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @kauth_cred_getruid(i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @kauth_cred_getuid(i32 %31)
  %33 = icmp ne i64 %30, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PRIV_SETPRIORITY_DARWIN_ROLE, align 4
  %37 = call i64 @priv_check_cred(i32 %35, i32 %36, i32 0)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EPERM, align 4
  store i32 %40, i32* %7, align 4
  br label %70

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %28, %22, %18, %3
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @proc_task(i64 %48)
  %50 = call i32 @proc_get_darwinbgstate(i32 %49, i32* %8)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PROC_FLAG_APPLICATION, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @PROC_FLAG_APPLICATION, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOTSUP, align 4
  store i32 %57, i32* %7, align 4
  br label %70

58:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @proc_darwin_role_to_task_role(i32 %59, i32* %11)
  store i32 %60, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %70

63:                                               ; preds = %58
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @proc_task(i64 %64)
  %66 = load i32, i32* @TASK_POLICY_ATTRIBUTE, align 4
  %67 = load i32, i32* @TASK_POLICY_ROLE, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @proc_set_task_policy(i32 %65, i32 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %62, %56, %39
  %71 = call i32 @kauth_cred_unref(i32* %10)
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @kauth_cred_proc_ref(i64) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i64 @kauth_cred_getruid(i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i64 @priv_check_cred(i32, i32, i32) #1

declare dso_local i32 @proc_get_darwinbgstate(i32, i32*) #1

declare dso_local i32 @proc_task(i64) #1

declare dso_local i32 @proc_darwin_role_to_task_role(i32, i32*) #1

declare dso_local i32 @proc_set_task_policy(i32, i32, i32, i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
