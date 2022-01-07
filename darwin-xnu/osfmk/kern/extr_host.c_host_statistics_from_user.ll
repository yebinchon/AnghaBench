; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_statistics_from_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_host.c_host_statistics_from_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERN_SUCCESS = common dso_local global i64 0, align 8
@HOST_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_HOST = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @host_statistics_from_user(i64 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @HOST_NULL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i64, i64* @KERN_INVALID_HOST, align 8
  store i64 %17, i64* %5, align 8
  br label %48

18:                                               ; preds = %4
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @rate_limit_host_statistics(i32 %19, i32 %20, i32 %21, i32* %22, i64* %10, i32* %11)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %5, align 8
  br label %48

27:                                               ; preds = %18
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @KERN_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %5, align 8
  br label %48

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = call i64 @host_statistics(i64 %34, i32 %35, i32 %36, i32* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @KERN_SUCCESS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @cache_host_statistics(i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %33
  %47 = load i64, i64* %10, align 8
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %46, %31, %25, %16
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local i64 @rate_limit_host_statistics(i32, i32, i32, i32*, i64*, i32*) #1

declare dso_local i64 @host_statistics(i64, i32, i32, i32*) #1

declare dso_local i32 @cache_host_statistics(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
