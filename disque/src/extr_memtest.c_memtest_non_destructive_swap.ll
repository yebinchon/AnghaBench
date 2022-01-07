; ModuleID = '/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_non_destructive_swap.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_memtest.c_memtest_non_destructive_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memtest_non_destructive_swap(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %5, align 8
  %12 = load i64, i64* %4, align 8
  %13 = udiv i64 %12, 8
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load volatile i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = add i64 %24, 1
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load volatile i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64*, i64** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store volatile i64 %28, i64* %31, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store volatile i64 %32, i64* %36, align 8
  br label %37

37:                                               ; preds = %18
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %38, 2
  store i64 %39, i64* %7, align 8
  br label %14

40:                                               ; preds = %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
