; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_symmetric_extension.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vaguedenoiser.c_symmetric_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32, i32, i32)* @symmetric_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symmetric_extension(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @NPAD, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @NPAD, align 4
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %34

23:                                               ; preds = %4
  %24 = load float*, float** %5, align 8
  %25 = load i32, i32* @NPAD, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  %28 = load float, float* %27, align 4
  %29 = load float*, float** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %29, i64 %32
  store float %28, float* %33, align 4
  br label %34

34:                                               ; preds = %23, %4
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load float*, float** %5, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %43, i64 %46
  store float %42, float* %47, align 4
  br label %48

48:                                               ; preds = %37, %34
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %68, %48
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load float*, float** %5, align 8
  %56 = load i32, i32* @NPAD, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds float, float* %55, i64 %60
  %62 = load float, float* %61, align 4
  %63 = load float*, float** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %63, i64 %66
  store float %62, float* %67, align 4
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %50

71:                                               ; preds = %50
  %72 = load i32, i32* @NPAD, align 4
  %73 = load i32, i32* @NPAD, align 4
  %74 = add nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %99, %71
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load float*, float** %5, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %86, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %94, i64 %97
  store float %93, float* %98, align 4
  br label %99

99:                                               ; preds = %85
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %81

102:                                              ; preds = %81
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
