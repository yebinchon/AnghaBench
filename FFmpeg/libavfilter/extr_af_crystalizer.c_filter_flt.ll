; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crystalizer.c_filter_flt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_crystalizer.c_filter_flt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i8**, i32, i32, float, i32)* @filter_flt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filter_flt(i8** %0, i8** %1, i8** %2, i32 %3, i32 %4, float %5, i32 %6) #0 {
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store float %5, float* %13, align 4
  store i32 %6, i32* %14, align 4
  %21 = load i8**, i8*** %10, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to float*
  store float* %24, float** %15, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to float*
  store float* %28, float** %16, align 8
  %29 = load i8**, i8*** %9, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to float*
  store float* %32, float** %17, align 8
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %94, %7
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %33
  store i32 0, i32* %19, align 4
  br label %38

38:                                               ; preds = %82, %37
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %38
  %43 = load float*, float** %15, align 8
  %44 = load i32, i32* %19, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, float* %43, i64 %45
  %47 = load float, float* %46, align 4
  store float %47, float* %20, align 4
  %48 = load float, float* %20, align 4
  %49 = load float, float* %20, align 4
  %50 = load float*, float** %17, align 8
  %51 = load i32, i32* %19, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fsub float %49, %54
  %56 = load float, float* %13, align 4
  %57 = fmul float %55, %56
  %58 = fadd float %48, %57
  %59 = load float*, float** %16, align 8
  %60 = load i32, i32* %19, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %59, i64 %61
  store float %58, float* %62, align 4
  %63 = load float, float* %20, align 4
  %64 = load float*, float** %17, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %64, i64 %66
  store float %63, float* %67, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %42
  %71 = load float*, float** %16, align 8
  %72 = load i32, i32* %19, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  %75 = load float, float* %74, align 4
  %76 = call float @av_clipf(float %75, i32 -1, i32 1)
  %77 = load float*, float** %16, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  store float %76, float* %80, align 4
  br label %81

81:                                               ; preds = %70, %42
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %19, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %19, align 4
  br label %38

85:                                               ; preds = %38
  %86 = load i32, i32* %19, align 4
  %87 = load float*, float** %16, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds float, float* %87, i64 %88
  store float* %89, float** %16, align 8
  %90 = load i32, i32* %19, align 4
  %91 = load float*, float** %15, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds float, float* %91, i64 %92
  store float* %93, float** %15, align 8
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %18, align 4
  br label %33

97:                                               ; preds = %33
  ret void
}

declare dso_local float @av_clipf(float, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
