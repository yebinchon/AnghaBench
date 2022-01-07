; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvqdec.c_add_peak.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvqdec.c_add_peak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, float*, float, float*, i32)* @add_peak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_peak(i32 %0, i32 %1, float* %2, float %3, float* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float %3, float* %10, align 4
  store float* %4, float** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load float*, float** %9, align 8
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %17, i64 %19
  store float* %20, float** %15, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %38, %6
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %23, 2
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %21
  %27 = load float, float* %10, align 4
  %28 = load float*, float** %9, align 8
  %29 = getelementptr inbounds float, float* %28, i32 1
  store float* %29, float** %9, align 8
  %30 = load float, float* %28, align 4
  %31 = fmul float %27, %30
  %32 = load float*, float** %11, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %32, i64 %34
  %36 = load float, float* %35, align 4
  %37 = fadd float %36, %31
  store float %37, float* %35, align 4
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  br label %21

41:                                               ; preds = %21
  store i32 1, i32* %13, align 4
  br label %42

42:                                               ; preds = %79, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @ROUNDED_DIV(i32 %44, i32 %45)
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %82

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @very_broken_op(i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 0, %52
  %54 = sdiv i32 %53, 2
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %75, %48
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sdiv i32 %58, 2
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %55
  %62 = load float, float* %10, align 4
  %63 = load float*, float** %9, align 8
  %64 = getelementptr inbounds float, float* %63, i32 1
  store float* %64, float** %9, align 8
  %65 = load float, float* %63, align 4
  %66 = fmul float %62, %65
  %67 = load float*, float** %11, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds float, float* %67, i64 %71
  %73 = load float, float* %72, align 4
  %74 = fadd float %73, %66
  store float %74, float* %72, align 4
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %55

78:                                               ; preds = %55
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %42

82:                                               ; preds = %42
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @very_broken_op(i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 0, %86
  %88 = sdiv i32 %87, 2
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %115, %82
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  %93 = sdiv i32 %92, 2
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load float*, float** %9, align 8
  %97 = load float*, float** %15, align 8
  %98 = icmp ult float* %96, %97
  br label %99

99:                                               ; preds = %95, %89
  %100 = phi i1 [ false, %89 ], [ %98, %95 ]
  br i1 %100, label %101, label %118

101:                                              ; preds = %99
  %102 = load float, float* %10, align 4
  %103 = load float*, float** %9, align 8
  %104 = getelementptr inbounds float, float* %103, i32 1
  store float* %104, float** %9, align 8
  %105 = load float, float* %103, align 4
  %106 = fmul float %102, %105
  %107 = load float*, float** %11, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %16, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %107, i64 %111
  %113 = load float, float* %112, align 4
  %114 = fadd float %113, %106
  store float %114, float* %112, align 4
  br label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %89

118:                                              ; preds = %99
  ret void
}

declare dso_local i32 @ROUNDED_DIV(i32, i32) #1

declare dso_local i32 @very_broken_op(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
