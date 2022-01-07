; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_donice.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_donice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@PRIO_MAX = common dso_local global i32 0, align 4
@PRIO_MIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @donice(%struct.proc* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.proc*, %struct.proc** %4, align 8
  %11 = call i32 @kauth_cred_proc_ref(%struct.proc* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.proc*, %struct.proc** %5, align 8
  %13 = call i32 @kauth_cred_proc_ref(%struct.proc* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @suser(i32 %14, i32* null)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @kauth_cred_getruid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @kauth_cred_getuid(i32 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @kauth_cred_getuid(i32 %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @kauth_cred_getruid(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @kauth_cred_getuid(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EPERM, align 4
  store i32 %34, i32* %7, align 4
  br label %71

35:                                               ; preds = %27, %21, %17, %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PRIO_MAX, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* @PRIO_MAX, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PRIO_MIN, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @PRIO_MIN, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.proc*, %struct.proc** %5, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.proc*, %struct.proc** %4, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 1
  %57 = call i64 @suser(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @EACCES, align 4
  store i32 %60, i32* %7, align 4
  br label %71

61:                                               ; preds = %53, %47
  %62 = load %struct.proc*, %struct.proc** %5, align 8
  %63 = call i32 @proc_lock(%struct.proc* %62)
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.proc*, %struct.proc** %5, align 8
  %66 = getelementptr inbounds %struct.proc, %struct.proc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.proc*, %struct.proc** %5, align 8
  %68 = call i32 @proc_unlock(%struct.proc* %67)
  %69 = load %struct.proc*, %struct.proc** %5, align 8
  %70 = call i32 @resetpriority(%struct.proc* %69)
  br label %71

71:                                               ; preds = %61, %59, %33
  %72 = call i32 @kauth_cred_unref(i32* %8)
  %73 = call i32 @kauth_cred_unref(i32* %9)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @kauth_cred_proc_ref(%struct.proc*) #1

declare dso_local i64 @suser(i32, i32*) #1

declare dso_local i64 @kauth_cred_getruid(i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @proc_lock(%struct.proc*) #1

declare dso_local i32 @proc_unlock(%struct.proc*) #1

declare dso_local i32 @resetpriority(%struct.proc*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
