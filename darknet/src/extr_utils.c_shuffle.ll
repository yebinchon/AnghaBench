; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_utils.c_shuffle.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_utils.c_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RAND_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shuffle(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i8* @calloc(i32 1, i64 %10)
  store i8* %11, i8** %8, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %56, %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub i64 %14, 1
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %12
  %18 = load i64, i64* %7, align 8
  %19 = call i64 (...) @rand()
  %20 = load i64, i64* @RAND_MAX, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = sub i64 %21, %22
  %24 = udiv i64 %20, %23
  %25 = add i64 %24, 1
  %26 = udiv i64 %19, %25
  %27 = add i64 %18, %26
  store i64 %27, i64* %9, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = mul i64 %30, %31
  %33 = getelementptr i8, i8* %29, i64 %32
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @memcpy(i8* %28, i8* %33, i64 %34)
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = mul i64 %37, %38
  %40 = getelementptr i8, i8* %36, i64 %39
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = mul i64 %42, %43
  %45 = getelementptr i8, i8* %41, i64 %44
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @memcpy(i8* %40, i8* %45, i64 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %6, align 8
  %51 = mul i64 %49, %50
  %52 = getelementptr i8, i8* %48, i64 %51
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @memcpy(i8* %52, i8* %53, i64 %54)
  br label %56

56:                                               ; preds = %17
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %12

59:                                               ; preds = %12
  ret void
}

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
