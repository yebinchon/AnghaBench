; ModuleID = '/home/carl/AnghaBench/darknet/examples/extr_go.c_predict_move2.c'
source_filename = "/home/carl/AnghaBench/darknet/examples/extr_go.c_predict_move2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @predict_move2(i32* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load float*, float** %6, align 8
  %17 = call float* @network_predict(i32* %15, float* %16)
  store float* %17, float** %9, align 8
  %18 = load float*, float** %9, align 8
  %19 = load float*, float** %7, align 8
  %20 = call i32 @copy_cpu(i32 362, float* %18, i32 1, float* %19, i32 1)
  %21 = load float*, float** %9, align 8
  %22 = getelementptr inbounds float, float* %21, i64 362
  %23 = load float, float* %22, align 4
  store float %23, float* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %83

26:                                               ; preds = %4
  %27 = load float*, float** %6, align 8
  %28 = call i32 @float_to_image(i32 19, i32 19, i32 3, float* %27)
  store i32 %28, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %29

29:                                               ; preds = %75, %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 8
  br i1 %31, label %32, label %78

32:                                               ; preds = %29
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @rotate_image_cw(i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp sge i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @flip_image(i32 %39)
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32*, i32** %5, align 8
  %43 = load float*, float** %6, align 8
  %44 = call float* @network_predict(i32* %42, float* %43)
  store float* %44, float** %13, align 8
  %45 = load float*, float** %13, align 8
  %46 = call i32 @float_to_image(i32 19, i32 19, i32 1, float* %45)
  store i32 %46, i32* %14, align 4
  %47 = load float*, float** %13, align 8
  %48 = getelementptr inbounds float, float* %47, i64 362
  %49 = load float, float* %48, align 4
  %50 = load float, float* %10, align 4
  %51 = fadd float %50, %49
  store float %51, float* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %52, 4
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @flip_image(i32 %55)
  br label %57

57:                                               ; preds = %54, %41
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %11, align 4
  %60 = sub nsw i32 0, %59
  %61 = call i32 @rotate_image_cw(i32 %58, i32 %60)
  %62 = load float*, float** %13, align 8
  %63 = load float*, float** %7, align 8
  %64 = call i32 @axpy_cpu(i32 362, i32 1, float* %62, i32 1, float* %63, i32 1)
  %65 = load i32, i32* %11, align 4
  %66 = icmp sge i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @flip_image(i32 %68)
  br label %70

70:                                               ; preds = %67, %57
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 0, %72
  %74 = call i32 @rotate_image_cw(i32 %71, i32 %73)
  br label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %29

78:                                               ; preds = %29
  %79 = load float, float* %10, align 4
  %80 = fdiv float %79, 8.000000e+00
  store float %80, float* %10, align 4
  %81 = load float*, float** %7, align 8
  %82 = call i32 @scal_cpu(i32 362, i32 0, float* %81, i32 1)
  br label %83

83:                                               ; preds = %78, %4
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %108, %83
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 361
  br i1 %86, label %87, label %111

87:                                               ; preds = %84
  %88 = load float*, float** %6, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = fcmp une float %92, 0.000000e+00
  br i1 %93, label %102, label %94

94:                                               ; preds = %87
  %95 = load float*, float** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 361
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %95, i64 %98
  %100 = load float, float* %99, align 4
  %101 = fcmp une float %100, 0.000000e+00
  br i1 %101, label %102, label %107

102:                                              ; preds = %94, %87
  %103 = load float*, float** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  store float 0.000000e+00, float* %106, align 4
  br label %107

107:                                              ; preds = %102, %94
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %84

111:                                              ; preds = %84
  %112 = load float, float* %10, align 4
  ret float %112
}

declare dso_local float* @network_predict(i32*, float*) #1

declare dso_local i32 @copy_cpu(i32, float*, i32, float*, i32) #1

declare dso_local i32 @float_to_image(i32, i32, i32, float*) #1

declare dso_local i32 @rotate_image_cw(i32, i32) #1

declare dso_local i32 @flip_image(i32) #1

declare dso_local i32 @axpy_cpu(i32, i32, float*, i32, float*, i32) #1

declare dso_local i32 @scal_cpu(i32, i32, float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
