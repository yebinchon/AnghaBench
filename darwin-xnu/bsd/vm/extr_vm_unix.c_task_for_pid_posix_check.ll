; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_task_for_pid_posix_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_unix.c_task_for_pid_posix_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }

@SZOMB = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@tfp_policy = common dso_local global i64 0, align 8
@KERN_TFP_POLICY_DENY = common dso_local global i64 0, align 8
@P_SUGID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @task_for_pid_posix_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_for_pid_posix_check(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SZOMB, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %79

15:                                               ; preds = %1
  %16 = call i32 (...) @kauth_cred_get()
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @kauth_cred_getuid(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @kauth_cred_issuser(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %2, align 4
  br label %79

24:                                               ; preds = %15
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = call %struct.TYPE_5__* (...) @current_proc()
  %27 = icmp eq %struct.TYPE_5__* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %2, align 4
  br label %79

30:                                               ; preds = %24
  %31 = load i64, i64* @tfp_policy, align 8
  %32 = load i64, i64* @KERN_TFP_POLICY_DENY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  br label %79

36:                                               ; preds = %30
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = call i32 @kauth_cred_proc_ref(%struct.TYPE_5__* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i64 @kauth_cred_getuid(i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @kauth_cred_getruid(i32 %45)
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @kauth_cred_getsvuid(i32 %50)
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44, %36
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %7, align 4
  br label %76

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @kauth_cred_gid_subset(i32 %57, i32 %58, i32* %7)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61, %56
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %7, align 4
  br label %76

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @P_SUGID, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %7, align 4
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %73, %64, %54
  %77 = call i32 @kauth_cred_unref(i32* %4)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %76, %34, %28, %22, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i64 @kauth_cred_issuser(i32) #1

declare dso_local %struct.TYPE_5__* @current_proc(...) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.TYPE_5__*) #1

declare dso_local i64 @kauth_cred_getruid(i32) #1

declare dso_local i64 @kauth_cred_getsvuid(i32) #1

declare dso_local i64 @kauth_cred_gid_subset(i32, i32, i32*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
