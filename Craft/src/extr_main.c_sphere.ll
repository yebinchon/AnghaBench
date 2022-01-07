; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_sphere.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_sphere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@sphere.offsets = internal constant [8 x [3 x float]] [[3 x float] [float -5.000000e-01, float -5.000000e-01, float -5.000000e-01], [3 x float] [float -5.000000e-01, float -5.000000e-01, float 5.000000e-01], [3 x float] [float -5.000000e-01, float 5.000000e-01, float -5.000000e-01], [3 x float] [float -5.000000e-01, float 5.000000e-01, float 5.000000e-01], [3 x float] [float 5.000000e-01, float -5.000000e-01, float -5.000000e-01], [3 x float] [float 5.000000e-01, float -5.000000e-01, float 5.000000e-01], [3 x float] [float 5.000000e-01, float 5.000000e-01, float -5.000000e-01], [3 x float] [float 5.000000e-01, float 5.000000e-01, float 5.000000e-01]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sphere(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %17, align 4
  br label %42

42:                                               ; preds = %174, %6
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  %47 = icmp sle i32 %43, %46
  br i1 %47, label %48, label %177

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %174

56:                                               ; preds = %51, %48
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %18, align 4
  br label %60

60:                                               ; preds = %170, %56
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp sle i32 %61, %64
  br i1 %65, label %66, label %173

66:                                               ; preds = %60
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %170

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %19, align 4
  br label %78

78:                                               ; preds = %166, %74
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %84, label %169

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %166

92:                                               ; preds = %87, %84
  store i32 0, i32* %20, align 4
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %94

94:                                               ; preds = %150, %92
  %95 = load i32, i32* %22, align 4
  %96 = icmp slt i32 %95, 8
  br i1 %96, label %97, label %153

97:                                               ; preds = %94
  %98 = load i32, i32* %17, align 4
  %99 = sitofp i32 %98 to float
  %100 = load i32, i32* %22, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* @sphere.offsets, i64 0, i64 %101
  %103 = getelementptr inbounds [3 x float], [3 x float]* %102, i64 0, i64 0
  %104 = load float, float* %103, align 4
  %105 = fadd float %99, %104
  %106 = load i32, i32* %13, align 4
  %107 = sitofp i32 %106 to float
  %108 = fsub float %105, %107
  store float %108, float* %23, align 4
  %109 = load i32, i32* %18, align 4
  %110 = sitofp i32 %109 to float
  %111 = load i32, i32* %22, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* @sphere.offsets, i64 0, i64 %112
  %114 = getelementptr inbounds [3 x float], [3 x float]* %113, i64 0, i64 1
  %115 = load float, float* %114, align 4
  %116 = fadd float %110, %115
  %117 = load i32, i32* %14, align 4
  %118 = sitofp i32 %117 to float
  %119 = fsub float %116, %118
  store float %119, float* %24, align 4
  %120 = load i32, i32* %19, align 4
  %121 = sitofp i32 %120 to float
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x [3 x float]], [8 x [3 x float]]* @sphere.offsets, i64 0, i64 %123
  %125 = getelementptr inbounds [3 x float], [3 x float]* %124, i64 0, i64 2
  %126 = load float, float* %125, align 4
  %127 = fadd float %121, %126
  %128 = load i32, i32* %15, align 4
  %129 = sitofp i32 %128 to float
  %130 = fsub float %127, %129
  store float %130, float* %25, align 4
  %131 = load float, float* %23, align 4
  %132 = load float, float* %23, align 4
  %133 = fmul float %131, %132
  %134 = load float, float* %24, align 4
  %135 = load float, float* %24, align 4
  %136 = fmul float %134, %135
  %137 = fadd float %133, %136
  %138 = load float, float* %25, align 4
  %139 = load float, float* %25, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %137, %140
  %142 = call float @sqrtf(float %141) #3
  store float %142, float* %26, align 4
  %143 = load float, float* %26, align 4
  %144 = load i32, i32* %8, align 4
  %145 = sitofp i32 %144 to float
  %146 = fcmp olt float %143, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %97
  store i32 1, i32* %20, align 4
  br label %149

148:                                              ; preds = %97
  store i32 1, i32* %21, align 4
  br label %149

149:                                              ; preds = %148, %147
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %22, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %22, align 4
  br label %94

153:                                              ; preds = %94
  %154 = load i32, i32* %20, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %21, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %19, align 4
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @builder_block(i32 %160, i32 %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %159, %156, %153
  br label %166

166:                                              ; preds = %165, %91
  %167 = load i32, i32* %19, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %19, align 4
  br label %78

169:                                              ; preds = %78
  br label %170

170:                                              ; preds = %169, %73
  %171 = load i32, i32* %18, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %18, align 4
  br label %60

173:                                              ; preds = %60
  br label %174

174:                                              ; preds = %173, %55
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %17, align 4
  br label %42

177:                                              ; preds = %42
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

declare dso_local i32 @builder_block(i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
