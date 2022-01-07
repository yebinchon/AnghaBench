; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__hdr_to_ldr.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__hdr_to_ldr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@stbi__h2l_scale_i = common dso_local global float 0.000000e+00, align 4
@stbi__h2l_gamma_i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (float*, i32, i32, i32)* @stbi__hdr_to_ldr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @stbi__hdr_to_ldr(float* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load float*, float** %6, align 8
  %17 = icmp ne float* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i64* null, i64** %5, align 8
  br label %132

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @stbi__malloc_mad3(i32 %20, i32 %21, i32 %22, i32 0)
  %24 = inttoptr i64 %23 to i64*
  store i64* %24, i64** %13, align 8
  %25 = load i64*, i64** %13, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load float*, float** %6, align 8
  %29 = call i32 @STBI_FREE(float* %28)
  %30 = call i64* @stbi__errpuc(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64* %30, i64** %5, align 8
  br label %132

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %12, align 4
  br label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %37, %35
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %125, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %43, %44
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %128

47:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %87, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load float*, float** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %53, i64 %59
  %61 = load float, float* %60, align 4
  %62 = load float, float* @stbi__h2l_scale_i, align 4
  %63 = fmul float %61, %62
  %64 = load i32, i32* @stbi__h2l_gamma_i, align 4
  %65 = call i64 @pow(float %63, i32 %64)
  %66 = sitofp i64 %65 to float
  %67 = fmul float %66, 2.550000e+02
  %68 = fadd float %67, 5.000000e-01
  store float %68, float* %14, align 4
  %69 = load float, float* %14, align 4
  %70 = fcmp olt float %69, 0.000000e+00
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  store float 0.000000e+00, float* %14, align 4
  br label %72

72:                                               ; preds = %71, %52
  %73 = load float, float* %14, align 4
  %74 = fcmp ogt float %73, 2.550000e+02
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store float 2.550000e+02, float* %14, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load float, float* %14, align 4
  %78 = call i64 @stbi__float2int(float %77)
  %79 = load i64*, i64** %13, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %79, i64 %85
  store i64 %78, i64* %86, align 8
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %48

90:                                               ; preds = %48
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %124

94:                                               ; preds = %90
  %95 = load float*, float** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %95, i64 %101
  %103 = load float, float* %102, align 4
  %104 = fmul float %103, 2.550000e+02
  %105 = fadd float %104, 5.000000e-01
  store float %105, float* %15, align 4
  %106 = load float, float* %15, align 4
  %107 = fcmp olt float %106, 0.000000e+00
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  store float 0.000000e+00, float* %15, align 4
  br label %109

109:                                              ; preds = %108, %94
  %110 = load float, float* %15, align 4
  %111 = fcmp ogt float %110, 2.550000e+02
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store float 2.550000e+02, float* %15, align 4
  br label %113

113:                                              ; preds = %112, %109
  %114 = load float, float* %15, align 4
  %115 = call i64 @stbi__float2int(float %114)
  %116 = load i64*, i64** %13, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %116, i64 %122
  store i64 %115, i64* %123, align 8
  br label %124

124:                                              ; preds = %113, %90
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %41

128:                                              ; preds = %41
  %129 = load float*, float** %6, align 8
  %130 = call i32 @STBI_FREE(float* %129)
  %131 = load i64*, i64** %13, align 8
  store i64* %131, i64** %5, align 8
  br label %132

132:                                              ; preds = %128, %27, %18
  %133 = load i64*, i64** %5, align 8
  ret i64* %133
}

declare dso_local i64 @stbi__malloc_mad3(i32, i32, i32, i32) #1

declare dso_local i32 @STBI_FREE(float*) #1

declare dso_local i64* @stbi__errpuc(i8*, i8*) #1

declare dso_local i64 @pow(float, i32) #1

declare dso_local i64 @stbi__float2int(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
