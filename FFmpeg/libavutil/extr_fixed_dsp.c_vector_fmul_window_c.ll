; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_fixed_dsp.c_vector_fmul_window_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_fixed_dsp.c_vector_fmul_window_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64*, i32)* @vector_fmul_window_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vector_fmul_window_c(i64* %0, i64* %1, i64* %2, i64* %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i64*, i64** %6, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64* %20, i64** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i64*, i64** %9, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  store i64* %24, i64** %9, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i64*, i64** %7, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64* %28, i64** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 0, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %15, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %16, align 8
  br label %35

35:                                               ; preds = %79, %5
  %36 = load i64, i64* %15, align 8
  %37 = icmp ult i64 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %35
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load i64*, i64** %8, align 8
  %44 = load i64, i64* %16, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load i64*, i64** %9, align 8
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %13, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %16, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %14, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* %14, align 8
  %57 = mul i64 %55, %56
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %13, align 8
  %60 = mul i64 %58, %59
  %61 = sub i64 %57, %60
  %62 = add i64 %61, 1073741824
  %63 = lshr i64 %62, 31
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 %63, i64* %66, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %13, align 8
  %69 = mul i64 %67, %68
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %14, align 8
  %72 = mul i64 %70, %71
  %73 = add i64 %69, %72
  %74 = add i64 %73, 1073741824
  %75 = lshr i64 %74, 31
  %76 = load i64*, i64** %6, align 8
  %77 = load i64, i64* %16, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  store i64 %75, i64* %78, align 8
  br label %79

79:                                               ; preds = %38
  %80 = load i64, i64* %15, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %15, align 8
  %82 = load i64, i64* %16, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %16, align 8
  br label %35

84:                                               ; preds = %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
