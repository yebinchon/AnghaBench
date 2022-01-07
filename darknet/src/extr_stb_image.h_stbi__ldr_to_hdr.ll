; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__ldr_to_hdr.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__ldr_to_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@stbi__l2h_gamma = common dso_local global i32 0, align 4
@stbi__l2h_scale = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (float*, i32, i32, i32)* @stbi__ldr_to_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @stbi__ldr_to_hdr(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load float*, float** %6, align 8
  %15 = icmp ne float* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store float* null, float** %5, align 8
  br label %108

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @stbi__malloc_mad4(i32 %18, i32 %19, i32 %20, i32 4, i32 0)
  %22 = inttoptr i64 %21 to float*
  store float* %22, float** %13, align 8
  %23 = load float*, float** %13, align 8
  %24 = icmp eq float* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load float*, float** %6, align 8
  %27 = call i32 @STBI_FREE(float* %26)
  %28 = call float* @stbi__errpf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store float* %28, float** %5, align 8
  br label %108

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %12, align 4
  br label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %33
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %101, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %74, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load float*, float** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %51, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fdiv float %59, 2.550000e+02
  %61 = load i32, i32* @stbi__l2h_gamma, align 4
  %62 = call i32 @pow(float %60, i32 %61)
  %63 = load i32, i32* @stbi__l2h_scale, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sitofp i32 %64 to float
  %66 = load float*, float** %13, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %66, i64 %72
  store float %65, float* %73, align 4
  br label %74

74:                                               ; preds = %50
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %46

77:                                               ; preds = %46
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %77
  %82 = load float*, float** %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %82, i64 %88
  %90 = load float, float* %89, align 4
  %91 = fdiv float %90, 2.550000e+02
  %92 = load float*, float** %13, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %92, i64 %98
  store float %91, float* %99, align 4
  br label %100

100:                                              ; preds = %81, %77
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %39

104:                                              ; preds = %39
  %105 = load float*, float** %6, align 8
  %106 = call i32 @STBI_FREE(float* %105)
  %107 = load float*, float** %13, align 8
  store float* %107, float** %5, align 8
  br label %108

108:                                              ; preds = %104, %25, %16
  %109 = load float*, float** %5, align 8
  ret float* %109
}

declare dso_local i64 @stbi__malloc_mad4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @STBI_FREE(float*) #1

declare dso_local float* @stbi__errpf(i8*, i8*) #1

declare dso_local i32 @pow(float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
