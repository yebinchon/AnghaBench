; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_sorta_shuffle.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_sorta_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sorta_shuffle(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %40, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = mul i64 %18, %19
  %21 = load i64, i64* %8, align 8
  %22 = udiv i64 %20, %21
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 1
  %26 = mul i64 %23, %25
  %27 = load i64, i64* %8, align 8
  %28 = udiv i64 %26, %27
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = mul i64 %33, %34
  %36 = getelementptr i8, i8* %32, i64 %35
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @shuffle(i8* %36, i64 %37, i64 %38)
  br label %40

40:                                               ; preds = %17
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  br label %13

43:                                               ; preds = %13
  ret void
}

declare dso_local i32 @shuffle(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
