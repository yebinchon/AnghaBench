; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.h_get_symbol2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.h_get_symbol2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @get_symbol2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_symbol2(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 1, %13
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %12
  %17 = phi i32 [ %14, %12 ], [ 1, %15 ]
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, -4
  %20 = zext i1 %19 to i32
  %21 = call i32 @av_assert2(i32 %20)
  br label %22

22:                                               ; preds = %48, %16
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 28
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @get_rac(i32* %26, i32* %31)
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %25, %22
  %35 = phi i1 [ false, %22 ], [ %33, %25 ]
  br i1 %35, label %36, label %49

36:                                               ; preds = %34
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %36
  br label %22

49:                                               ; preds = %34
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %68, %49
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 31
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = call i32 @get_rac(i32* %56, i32* %62)
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @get_rac(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
