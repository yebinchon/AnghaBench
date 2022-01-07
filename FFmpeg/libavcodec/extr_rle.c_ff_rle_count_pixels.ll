; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rle.c_ff_rle_count_pixels.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rle.c_ff_rle_count_pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rle_count_pixels(i64* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %11 = load i64*, i64** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64* %14, i64** %9, align 8
  br label %15

15:                                               ; preds = %59, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @FFMIN(i32 127, i32 %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  %22 = load i64*, i64** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64*, i64** %9, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @memcmp(i64* %26, i64* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = icmp ne i32 %21, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @FFMIN(i32 127, i32 %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %59

54:                                               ; preds = %46, %40, %37
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %54, %34
  br label %66

58:                                               ; preds = %20
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, i32* %7, align 4
  %61 = load i64*, i64** %9, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64* %63, i64** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %15

66:                                               ; preds = %57, %15
  %67 = load i32, i32* %10, align 4
  ret i32 %67
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memcmp(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
