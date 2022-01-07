; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_fixed_dsp.c_vector_fmul_window_scaled_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_fixed_dsp.c_vector_fmul_window_scaled_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64*, i64*, i32, i32)* @vector_fmul_window_scaled_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_fmul_window_scaled_c(i32* %0, i64* %1, i64* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i64*, i64** %10, align 8
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64* %27, i64** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i64*, i64** %8, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64* %31, i64** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load i32, i32* %12, align 4
  %36 = sub nsw i32 %35, 1
  %37 = shl i32 1, %36
  br label %39

38:                                               ; preds = %6
  br label %39

39:                                               ; preds = %38, %34
  %40 = phi i32 [ %37, %34 ], [ 0, %38 ]
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %19, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 0, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %17, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %18, align 8
  br label %48

48:                                               ; preds = %104, %39
  %49 = load i64, i64* %17, align 8
  %50 = icmp ult i64 %49, 0
  br i1 %50, label %51, label %109

51:                                               ; preds = %48
  %52 = load i64*, i64** %8, align 8
  %53 = load i64, i64* %17, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = load i64, i64* %18, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %14, align 8
  %60 = load i64*, i64** %10, align 8
  %61 = load i64, i64* %17, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %15, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %18, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %16, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %16, align 8
  %70 = mul i64 %68, %69
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %15, align 8
  %73 = mul i64 %71, %72
  %74 = sub i64 %70, %73
  %75 = add i64 %74, 1073741824
  %76 = lshr i64 %75, 31
  %77 = load i64, i64* %19, align 8
  %78 = add i64 %76, %77
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = lshr i64 %78, %80
  %82 = call i32 @av_clip_int16(i64 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = load i64, i64* %17, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %82, i32* %85, align 4
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %15, align 8
  %88 = mul i64 %86, %87
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %16, align 8
  %91 = mul i64 %89, %90
  %92 = add i64 %88, %91
  %93 = add i64 %92, 1073741824
  %94 = lshr i64 %93, 31
  %95 = load i64, i64* %19, align 8
  %96 = add i64 %94, %95
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = lshr i64 %96, %98
  %100 = call i32 @av_clip_int16(i64 %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i64, i64* %18, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %100, i32* %103, align 4
  br label %104

104:                                              ; preds = %51
  %105 = load i64, i64* %17, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %18, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %18, align 8
  br label %48

109:                                              ; preds = %48
  ret void
}

declare dso_local i32 @av_clip_int16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
