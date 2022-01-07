; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_set_gpudeny_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_resource.c_set_gpudeny_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.proc*, i32)* @set_gpudeny_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_gpudeny_proc(%struct.proc* %0, %struct.proc* %1, i32 %2) #0 {
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
  %10 = call i32 (...) @kauth_cred_get()
  store i32 %10, i32* %8, align 4
  %11 = load %struct.proc*, %struct.proc** %5, align 8
  %12 = call i32 @kauth_cred_proc_ref(%struct.proc* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @kauth_cred_issuser(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @kauth_cred_getruid(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @kauth_cred_getuid(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @kauth_cred_getuid(i32 %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @kauth_cred_getruid(i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @kauth_cred_getuid(i32 %29)
  %31 = icmp ne i64 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EPERM, align 4
  store i32 %33, i32* %7, align 4
  br label %55

34:                                               ; preds = %26, %20, %16, %3
  %35 = load %struct.proc*, %struct.proc** %4, align 8
  %36 = load %struct.proc*, %struct.proc** %5, align 8
  %37 = icmp eq %struct.proc* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @EPERM, align 4
  store i32 %39, i32* %7, align 4
  br label %55

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %52 [
    i32 128, label %42
    i32 129, label %47
  ]

42:                                               ; preds = %40
  %43 = load %struct.proc*, %struct.proc** %5, align 8
  %44 = call i32 @proc_task(%struct.proc* %43)
  %45 = load i32, i32* @TRUE, align 4
  %46 = call i32 @task_set_gpu_denied(i32 %44, i32 %45)
  br label %54

47:                                               ; preds = %40
  %48 = load %struct.proc*, %struct.proc** %5, align 8
  %49 = call i32 @proc_task(%struct.proc* %48)
  %50 = load i32, i32* @FALSE, align 4
  %51 = call i32 @task_set_gpu_denied(i32 %49, i32 %50)
  br label %54

52:                                               ; preds = %40
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %7, align 4
  br label %55

54:                                               ; preds = %47, %42
  br label %55

55:                                               ; preds = %54, %52, %38, %32
  %56 = call i32 @kauth_cred_unref(i32* %9)
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local i32 @kauth_cred_proc_ref(%struct.proc*) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i64 @kauth_cred_getruid(i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @task_set_gpu_denied(i32, i32) #1

declare dso_local i32 @proc_task(%struct.proc*) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
