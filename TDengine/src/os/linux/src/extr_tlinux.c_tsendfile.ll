; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_tsendfile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_tsendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsendfile(i32 %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %34, %32, %4
  %14 = load i64, i64* %10, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load i64, i64* %10, align 8
  %18 = icmp ugt i64 %17, 1000000000
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i64 1000000000, i64* %10, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @sendfile(i32 %21, i32 %22, i32* %23, i64 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EINTR, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %13

33:                                               ; preds = %28
  store i32 -1, i32* %5, align 4
  br label %42

34:                                               ; preds = %20
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %10, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %10, align 8
  br label %13

39:                                               ; preds = %13
  %40 = load i64, i64* %9, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @sendfile(i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
