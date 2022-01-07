; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_DeformText.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_DeformText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { float**, i64, i64, i32* }

@tess = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DeformText(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i8* %0, i8** %2, align 8
  %18 = load float*, float** %6, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  store float 0.000000e+00, float* %19, align 4
  %20 = load float*, float** %6, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  store float 0.000000e+00, float* %21, align 4
  %22 = load float*, float** %6, align 8
  %23 = getelementptr inbounds float, float* %22, i64 2
  store float -1.000000e+00, float* %23, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 3), align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load float*, float** %6, align 8
  %28 = load float*, float** %5, align 8
  %29 = call i32 @CrossProduct(i32 %26, float* %27, float* %28)
  %30 = load float*, float** %12, align 8
  %31 = call i32 @VectorClear(float* %30)
  store float 9.999990e+05, float* %10, align 4
  store float -9.999990e+05, float* %11, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %80, %1
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %83

35:                                               ; preds = %32
  %36 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float*, float** %36, i64 %38
  %40 = load float*, float** %39, align 8
  %41 = load float*, float** %12, align 8
  %42 = load float*, float** %12, align 8
  %43 = call i32 @VectorAdd(float* %40, float* %41, float* %42)
  %44 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float*, float** %44, i64 %46
  %48 = load float*, float** %47, align 8
  %49 = getelementptr inbounds float, float* %48, i64 2
  %50 = load float, float* %49, align 4
  %51 = load float, float* %10, align 4
  %52 = fcmp olt float %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %35
  %54 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float*, float** %54, i64 %56
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 2
  %60 = load float, float* %59, align 4
  store float %60, float* %10, align 4
  br label %61

61:                                               ; preds = %53, %35
  %62 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float*, float** %62, i64 %64
  %66 = load float*, float** %65, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  %68 = load float, float* %67, align 4
  %69 = load float, float* %11, align 4
  %70 = fcmp ogt float %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load float**, float*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 0), align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float*, float** %72, i64 %74
  %76 = load float*, float** %75, align 8
  %77 = getelementptr inbounds float, float* %76, i64 2
  %78 = load float, float* %77, align 4
  store float %78, float* %11, align 4
  br label %79

79:                                               ; preds = %71, %61
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %32

83:                                               ; preds = %32
  %84 = load float*, float** %12, align 8
  %85 = load float*, float** %4, align 8
  %86 = call i32 @VectorScale(float* %84, float 2.500000e-01, float* %85)
  %87 = load float*, float** %6, align 8
  %88 = getelementptr inbounds float, float* %87, i64 0
  store float 0.000000e+00, float* %88, align 4
  %89 = load float*, float** %6, align 8
  %90 = getelementptr inbounds float, float* %89, i64 1
  store float 0.000000e+00, float* %90, align 4
  %91 = load float, float* %11, align 4
  %92 = load float, float* %10, align 4
  %93 = fsub float %91, %92
  %94 = fmul float %93, 5.000000e-01
  %95 = load float*, float** %6, align 8
  %96 = getelementptr inbounds float, float* %95, i64 2
  store float %94, float* %96, align 4
  %97 = load float*, float** %5, align 8
  %98 = load float*, float** %6, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  %100 = load float, float* %99, align 4
  %101 = fmul float %100, -7.500000e-01
  %102 = load float*, float** %5, align 8
  %103 = call i32 @VectorScale(float* %97, float %101, float* %102)
  %104 = load i8*, i8** %2, align 8
  %105 = call i32 @strlen(i8* %104)
  store i32 %105, i32* %7, align 4
  %106 = load float*, float** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load float*, float** %5, align 8
  %110 = load float*, float** %4, align 8
  %111 = call i32 @VectorMA(float* %106, i32 %108, float* %109, float* %110)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tess, i32 0, i32 1), align 8
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 255, i32* %112, align 4
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 255, i32* %113, align 8
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 255, i32* %114, align 4
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 255, i32* %115, align 16
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %160, %83
  %117 = load i32, i32* %3, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %163

120:                                              ; preds = %116
  %121 = load i8*, i8** %2, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %8, align 4
  %128 = and i32 %127, 255
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 32
  br i1 %130, label %131, label %155

131:                                              ; preds = %120
  %132 = load i32, i32* %8, align 4
  %133 = ashr i32 %132, 4
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %8, align 4
  %135 = and i32 %134, 15
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %13, align 4
  %137 = sitofp i32 %136 to float
  %138 = fmul float %137, 6.250000e-02
  store float %138, float* %15, align 4
  %139 = load i32, i32* %14, align 4
  %140 = sitofp i32 %139 to float
  %141 = fmul float %140, 6.250000e-02
  store float %141, float* %16, align 4
  store float 6.250000e-02, float* %17, align 4
  %142 = load float*, float** %4, align 8
  %143 = load float*, float** %5, align 8
  %144 = load float*, float** %6, align 8
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %146 = load float, float* %16, align 4
  %147 = load float, float* %15, align 4
  %148 = load float, float* %16, align 4
  %149 = load float, float* %17, align 4
  %150 = fadd float %148, %149
  %151 = load float, float* %15, align 4
  %152 = load float, float* %17, align 4
  %153 = fadd float %151, %152
  %154 = call i32 @RB_AddQuadStampExt(float* %142, float* %143, float* %144, i32* %145, float %146, float %147, float %150, float %153)
  br label %155

155:                                              ; preds = %131, %120
  %156 = load float*, float** %4, align 8
  %157 = load float*, float** %5, align 8
  %158 = load float*, float** %4, align 8
  %159 = call i32 @VectorMA(float* %156, i32 -2, float* %157, float* %158)
  br label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %3, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %3, align 4
  br label %116

163:                                              ; preds = %116
  ret void
}

declare dso_local i32 @CrossProduct(i32, float*, float*) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @VectorMA(float*, i32, float*, float*) #1

declare dso_local i32 @RB_AddQuadStampExt(float*, float*, float*, i32*, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
