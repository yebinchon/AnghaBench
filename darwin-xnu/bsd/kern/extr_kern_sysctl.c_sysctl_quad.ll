; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sysctl.c_sysctl_quad.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sysctl.c_sysctl_quad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@USER_ADDR_NULL = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_quad(i64 %0, i64* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @USER_ADDR_NULL, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i64*, i64** %8, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @EFAULT, align 4
  store i32 %20, i32* %6, align 4
  br label %58

21:                                               ; preds = %16, %5
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i64*, i64** %8, align 8
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %6, align 4
  br label %58

30:                                               ; preds = %24, %21
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %6, align 4
  br label %58

38:                                               ; preds = %33, %30
  %39 = load i64*, i64** %8, align 8
  store i64 4, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32*, i32** %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @copyout(i32* %43, i64 %44, i32 4)
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %12, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %9, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @copyin(i64 %53, i32* %54, i32 4)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52, %49, %46
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %36, %28, %19
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @copyout(i32*, i64, i32) #1

declare dso_local i32 @copyin(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
