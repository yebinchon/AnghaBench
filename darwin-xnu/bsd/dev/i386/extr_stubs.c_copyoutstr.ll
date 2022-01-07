; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_stubs.c_copyoutstr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/i386/extr_stubs.c_copyoutstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENAMETOOLONG = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyoutstr(i8* %0, i32 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %19, %4
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i64 @min(i64 %22, i64 %23)
  store i64 %24, i64* %10, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @copyout(i8* %25, i32 %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @EFAULT, align 4
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %30, %21
  %33 = load i64, i64* %10, align 8
  %34 = load i64*, i64** %8, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* %11, align 4
  ret i32 %35
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @copyout(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
