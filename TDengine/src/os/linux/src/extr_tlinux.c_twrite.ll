; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_twrite.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_twrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @twrite(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  br label %13

13:                                               ; preds = %29, %27, %3
  %14 = load i64, i64* %8, align 8
  %15 = icmp ugt i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @write(i32 %17, i8* %18, i64 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @EINTR, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %13

28:                                               ; preds = %23
  store i64 -1, i64* %4, align 8
  br label %38

29:                                               ; preds = %16
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %10, align 8
  br label %13

36:                                               ; preds = %13
  %37 = load i64, i64* %7, align 8
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i64 @write(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
