; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c__vp_offset_and_mix.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_psy.c__vp_offset_and_mix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, float, float**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float*, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_vp_offset_and_mix(%struct.TYPE_5__* %0, float* %1, float* %2, i32 %3, float* %4, float* %5, float* %6) #0 {
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %16, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load float*, float** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %29, i64 %31
  %33 = load float, float* %32, align 4
  store float %33, float* %20, align 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load float, float* %35, align 4
  store float %36, float* %19, align 4
  store i32 0, i32* %15, align 4
  br label %37

37:                                               ; preds = %134, %7
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %137

41:                                               ; preds = %37
  %42 = load float*, float** %9, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load float**, float*** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float*, float** %49, i64 %51
  %53 = load float*, float** %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds float, float* %53, i64 %55
  %57 = load float, float* %56, align 4
  %58 = fadd float %46, %57
  store float %58, float* %21, align 4
  %59 = load float, float* %21, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load float, float* %63, align 8
  %65 = fcmp ogt float %59, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %41
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load float, float* %70, align 8
  store float %71, float* %21, align 4
  br label %72

72:                                               ; preds = %66, %41
  %73 = load float, float* %21, align 4
  %74 = load float*, float** %10, align 8
  %75 = load i32, i32* %15, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float, float* %20, align 4
  %80 = fadd float %78, %79
  %81 = call float @max(float %73, float %80)
  %82 = load float*, float** %12, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %82, i64 %84
  store float %81, float* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %133

88:                                               ; preds = %72
  store float 0xC031333340000000, float* %18, align 4
  %89 = load float, float* %21, align 4
  %90 = load float*, float** %14, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fsub float %89, %94
  store float %95, float* %21, align 4
  %96 = load float, float* %21, align 4
  %97 = load float, float* %18, align 4
  %98 = fcmp ogt float %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %88
  %100 = load float, float* %21, align 4
  %101 = load float, float* %18, align 4
  %102 = fsub float %100, %101
  %103 = fpext float %102 to double
  %104 = fmul double %103, 5.000000e-03
  %105 = load float, float* %19, align 4
  %106 = fpext float %105 to double
  %107 = fmul double %104, %106
  %108 = fsub double 1.000000e+00, %107
  %109 = fptrunc double %108 to float
  store float %109, float* %17, align 4
  %110 = load float, float* %17, align 4
  %111 = fcmp olt float %110, 0.000000e+00
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  store float 0x3F1A36E2E0000000, float* %17, align 4
  br label %113

113:                                              ; preds = %112, %99
  br label %125

114:                                              ; preds = %88
  %115 = load float, float* %21, align 4
  %116 = load float, float* %18, align 4
  %117 = fsub float %115, %116
  %118 = fpext float %117 to double
  %119 = fmul double %118, 3.000000e-04
  %120 = load float, float* %19, align 4
  %121 = fpext float %120 to double
  %122 = fmul double %119, %121
  %123 = fsub double 1.000000e+00, %122
  %124 = fptrunc double %123 to float
  store float %124, float* %17, align 4
  br label %125

125:                                              ; preds = %114, %113
  %126 = load float, float* %17, align 4
  %127 = load float*, float** %13, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fmul float %131, %126
  store float %132, float* %130, align 4
  br label %133

133:                                              ; preds = %125, %72
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %37

137:                                              ; preds = %37
  ret void
}

declare dso_local float @max(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
