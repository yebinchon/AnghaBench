; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_celt_autocorr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_arnndn.c_celt_autocorr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PITCH_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, float*, float*, i32, i32, i32)* @celt_autocorr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celt_autocorr(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* @PITCH_BUF_SIZE, align 4
  %27 = ashr i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %16, align 8
  %30 = alloca float, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load float*, float** %7, align 8
  store float* %34, float** %15, align 8
  br label %96

35:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = load float*, float** %7, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  %45 = load float, float* %44, align 4
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %30, i64 %47
  store float %45, float* %48, align 4
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %18, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %18, align 4
  br label %36

52:                                               ; preds = %36
  store i32 0, i32* %19, align 4
  br label %53

53:                                               ; preds = %92, %52
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %53
  %58 = load float*, float** %7, align 8
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %58, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %19, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = fmul float %62, %67
  %69 = load i32, i32* %19, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %30, i64 %70
  store float %68, float* %71, align 4
  %72 = load float*, float** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %19, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %72, i64 %77
  %79 = load float, float* %78, align 4
  %80 = load float*, float** %9, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %80, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fmul float %79, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %19, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %30, i64 %90
  store float %85, float* %91, align 4
  br label %92

92:                                               ; preds = %57
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %19, align 4
  br label %53

95:                                               ; preds = %53
  store float* %30, float** %15, align 8
  br label %96

96:                                               ; preds = %95, %33
  store i32 0, i32* %14, align 4
  %97 = load float*, float** %15, align 8
  %98 = load float*, float** %15, align 8
  %99 = load float*, float** %8, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 @celt_pitch_xcorr(float* %97, float* %98, float* %99, i32 %100, i32 %102)
  store i32 0, i32* %20, align 4
  br label %104

104:                                              ; preds = %143, %96
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %146

108:                                              ; preds = %104
  store float 0.000000e+00, float* %21, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %22, align 4
  br label %112

112:                                              ; preds = %132, %108
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load float*, float** %15, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %117, i64 %119
  %121 = load float, float* %120, align 4
  %122 = load float*, float** %15, align 8
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* %20, align 4
  %125 = sub nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %122, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fmul float %121, %128
  %130 = load float, float* %21, align 4
  %131 = fadd float %130, %129
  store float %131, float* %21, align 4
  br label %132

132:                                              ; preds = %116
  %133 = load i32, i32* %22, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %22, align 4
  br label %112

135:                                              ; preds = %112
  %136 = load float, float* %21, align 4
  %137 = load float*, float** %8, align 8
  %138 = load i32, i32* %20, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float, float* %137, i64 %139
  %141 = load float, float* %140, align 4
  %142 = fadd float %141, %136
  store float %142, float* %140, align 4
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %20, align 4
  br label %104

146:                                              ; preds = %104
  %147 = load i32, i32* %14, align 4
  %148 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %148)
  ret i32 %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @celt_pitch_xcorr(float*, float*, float*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
