; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_io_opaque.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_newsysctl.c_sysctl_io_opaque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_req = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysctl_io_opaque(%struct.sysctl_req* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysctl_req*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sysctl_req* %0, %struct.sysctl_req** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32*, i32** %9, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %13, %4
  %16 = load %struct.sysctl_req*, %struct.sysctl_req** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @SYSCTL_OUT(%struct.sysctl_req* %16, i8* %17, i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load %struct.sysctl_req*, %struct.sysctl_req** %6, align 8
  %24 = getelementptr inbounds %struct.sysctl_req, %struct.sysctl_req* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %15
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %43

29:                                               ; preds = %22
  %30 = load %struct.sysctl_req*, %struct.sysctl_req** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @SYSCTL_IN(%struct.sysctl_req* %30, i8* %31, i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** %9, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %36, %29
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %27
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @SYSCTL_OUT(%struct.sysctl_req*, i8*, i64) #1

declare dso_local i32 @SYSCTL_IN(%struct.sysctl_req*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
