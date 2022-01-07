; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_piddynkqueueinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_piddynkqueueinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@PROC_INFO_CALL_PIDDYNKQUEUEINFO = common dso_local global i32 0, align 4
@CHECK_SAME_USER = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_piddynkqueueinfo(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @USER_ADDR_NULL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* @EFAULT, align 4
  store i32 %20, i32* %7, align 4
  br label %60

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @proc_find(i32 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @PROC_NULL, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ESRCH, align 4
  store i32 %28, i32* %7, align 4
  br label %60

29:                                               ; preds = %21
  %30 = load i64, i64* %14, align 8
  %31 = load i32, i32* @PROC_INFO_CALL_PIDDYNKQUEUEINFO, align 4
  %32 = load i32, i32* @CHECK_SAME_USER, align 4
  %33 = call i32 @proc_security_policy(i64 %30, i32 %31, i32 0, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %56

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %53 [
    i32 128, label %39
    i32 129, label %46
  ]

39:                                               ; preds = %37
  %40 = load i64, i64* %14, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @kevent_copyout_dynkqinfo(i64 %40, i32 %41, i64 %42, i32 %43, i32* %44)
  store i32 %45, i32* %15, align 4
  br label %55

46:                                               ; preds = %37
  %47 = load i64, i64* %14, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i64, i64* %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @kevent_copyout_dynkqextinfo(i64 %47, i32 %48, i64 %49, i32 %50, i32* %51)
  store i32 %52, i32* %15, align 4
  br label %55

53:                                               ; preds = %37
  %54 = load i32, i32* @ENOTSUP, align 4
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %53, %46, %39
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @proc_rele(i64 %57)
  %59 = load i32, i32* %15, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %27, %19
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i64 @proc_find(i32) #1

declare dso_local i32 @proc_security_policy(i64, i32, i32, i32) #1

declare dso_local i32 @kevent_copyout_dynkqinfo(i64, i32, i64, i32, i32*) #1

declare dso_local i32 @kevent_copyout_dynkqextinfo(i64, i32, i64, i32, i32*) #1

declare dso_local i32 @proc_rele(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
