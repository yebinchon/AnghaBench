; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_searchCodeIndex.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_searchCodeIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64)* @searchCodeIndex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @searchCodeIndex(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 1, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = sub i64 %11, 1
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %48, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %18, %19
  %21 = udiv i64 %20, 2
  store i64 %21, i64* %10, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i64, i64* %10, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %48

32:                                               ; preds = %17
  %33 = load i32*, i32** %5, align 8
  %34 = load i64, i64* %10, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i64, i64* %10, align 8
  %43 = sub i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %47

44:                                               ; preds = %32
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %45, 1
  store i64 %46, i64* %4, align 8
  br label %52

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %29
  br label %13

49:                                               ; preds = %13
  %50 = load i64, i64* %6, align 8
  %51 = sub i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
