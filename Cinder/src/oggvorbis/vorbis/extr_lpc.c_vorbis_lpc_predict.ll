; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lpc.c_vorbis_lpc_predict.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_lpc.c_vorbis_lpc_predict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vorbis_lpc_predict(float* %0, float* %1, i32 %2, float* %3, i64 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float, align 4
  %16 = alloca float*, align 8
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store float* %3, float** %9, align 8
  store i64 %4, i64* %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %10, align 8
  %20 = add nsw i64 %18, %19
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call float* @alloca(i32 %22)
  store float* %23, float** %16, align 8
  %24 = load float*, float** %7, align 8
  %25 = icmp ne float* %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %5
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load float*, float** %16, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds float, float* %33, i64 %34
  store float 0.000000e+00, float* %35, align 4
  br label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %11, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %11, align 8
  br label %27

39:                                               ; preds = %27
  br label %58

40:                                               ; preds = %5
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i64, i64* %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %41
  %47 = load float*, float** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds float, float* %47, i64 %48
  %50 = load float, float* %49, align 4
  %51 = load float*, float** %16, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds float, float* %51, i64 %52
  store float %50, float* %53, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %11, align 8
  br label %41

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57, %39
  store i64 0, i64* %11, align 8
  br label %59

59:                                               ; preds = %97, %58
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  store float 0.000000e+00, float* %15, align 4
  %64 = load i64, i64* %11, align 8
  store i64 %64, i64* %13, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %86, %63
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load float*, float** %16, align 8
  %74 = load i64, i64* %13, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %13, align 8
  %76 = getelementptr inbounds float, float* %73, i64 %74
  %77 = load float, float* %76, align 4
  %78 = load float*, float** %6, align 8
  %79 = load i64, i64* %14, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, i64* %14, align 8
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  %83 = fmul float %77, %82
  %84 = load float, float* %15, align 4
  %85 = fsub float %84, %83
  store float %85, float* %15, align 4
  br label %86

86:                                               ; preds = %72
  %87 = load i64, i64* %12, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %12, align 8
  br label %67

89:                                               ; preds = %67
  %90 = load float, float* %15, align 4
  %91 = load float*, float** %16, align 8
  %92 = load i64, i64* %13, align 8
  %93 = getelementptr inbounds float, float* %91, i64 %92
  store float %90, float* %93, align 4
  %94 = load float*, float** %9, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds float, float* %94, i64 %95
  store float %90, float* %96, align 4
  br label %97

97:                                               ; preds = %89
  %98 = load i64, i64* %11, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %11, align 8
  br label %59

100:                                              ; preds = %59
  ret void
}

declare dso_local float* @alloca(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
