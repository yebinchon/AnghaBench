; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_isf_indices_36b.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_decode_isf_indices_36b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dico1_isf = common dso_local global float** null, align 8
@dico2_isf = common dso_local global float** null, align 8
@dico21_isf_36b = common dso_local global float** null, align 8
@dico22_isf_36b = common dso_local global float** null, align 8
@dico23_isf_36b = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, float*)* @decode_isf_indices_36b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_isf_indices_36b(i64* %0, float* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store float* %1, float** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 9
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = load float**, float*** @dico1_isf, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds float*, float** %10, i64 %13
  %15 = load float*, float** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  %19 = load float, float* %18, align 4
  %20 = fmul float %19, 0x3F00000000000000
  %21 = load float*, float** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %21, i64 %23
  store float %20, float* %24, align 4
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %49, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load float**, float*** @dico2_isf, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds float*, float** %33, i64 %36
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fmul float %42, 0x3F00000000000000
  %44 = load float*, float** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 9
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %44, i64 %47
  store float %43, float* %48, align 4
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %29

52:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 5
  br i1 %55, label %56, label %77

56:                                               ; preds = %53
  %57 = load float**, float*** @dico21_isf_36b, align 8
  %58 = load i64*, i64** %3, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds float*, float** %57, i64 %60
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fmul float %66, 0x3F00000000000000
  %68 = load float*, float** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  %72 = load float, float* %71, align 4
  %73 = fadd float %72, %67
  store float %73, float* %71, align 4
  br label %74

74:                                               ; preds = %56
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %53

77:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %100, %77
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 4
  br i1 %80, label %81, label %103

81:                                               ; preds = %78
  %82 = load float**, float*** @dico22_isf_36b, align 8
  %83 = load i64*, i64** %3, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 3
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds float*, float** %82, i64 %85
  %87 = load float*, float** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = fmul float %91, 0x3F00000000000000
  %93 = load float*, float** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 5
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %93, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fadd float %98, %92
  store float %99, float* %97, align 4
  br label %100

100:                                              ; preds = %81
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %78

103:                                              ; preds = %78
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %126, %103
  %105 = load i32, i32* %5, align 4
  %106 = icmp slt i32 %105, 7
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load float**, float*** @dico23_isf_36b, align 8
  %109 = load i64*, i64** %3, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 4
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds float*, float** %108, i64 %111
  %113 = load float*, float** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = fmul float %117, 0x3F00000000000000
  %119 = load float*, float** %4, align 8
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 9
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %119, i64 %122
  %124 = load float, float* %123, align 4
  %125 = fadd float %124, %118
  store float %125, float* %123, align 4
  br label %126

126:                                              ; preds = %107
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %104

129:                                              ; preds = %104
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
