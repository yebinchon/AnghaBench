; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_playerstate.c_CG_DamageFeedback.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_playerstate.c_CG_DamageFeedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, float, float, float, float, %struct.TYPE_7__*, i32, i64, i64, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32* }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@vec3_origin = common dso_local global i32 0, align 4
@DAMAGE_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DamageFeedback(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 7), align 8
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 10), align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 5), align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @STAT_HEALTH, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 40
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  store float 1.000000e+00, float* %12, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = sitofp i32 %30 to double
  %32 = fdiv double 4.000000e+01, %31
  %33 = fptrunc double %32 to float
  store float %33, float* %12, align 4
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* %6, align 4
  %36 = sitofp i32 %35 to float
  %37 = load float, float* %12, align 4
  %38 = fmul float %36, %37
  store float %38, float* %10, align 4
  %39 = load float, float* %10, align 4
  %40 = fcmp olt float %39, 5.000000e+00
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store float 5.000000e+00, float* %10, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load float, float* %10, align 4
  %44 = fcmp ogt float %43, 1.000000e+01
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store float 1.000000e+01, float* %10, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %4, align 4
  %48 = icmp eq i32 %47, 255
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  store float 0.000000e+00, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  store float 0.000000e+00, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  store float 0.000000e+00, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 8
  %53 = load float, float* %10, align 4
  %54 = fneg float %53
  store float %54, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 3), align 4
  br label %133

55:                                               ; preds = %49, %46
  %56 = load i32, i32* %5, align 4
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 2.550000e+02
  %59 = fmul double %58, 3.600000e+02
  %60 = fptrunc double %59 to float
  store float %60, float* %17, align 4
  %61 = load i32, i32* %4, align 4
  %62 = sitofp i32 %61 to double
  %63 = fdiv double %62, 2.550000e+02
  %64 = fmul double %63, 3.600000e+02
  %65 = fptrunc double %64 to float
  store float %65, float* %16, align 4
  %66 = load float, float* %17, align 4
  %67 = load float*, float** %14, align 8
  %68 = load i64, i64* @PITCH, align 8
  %69 = getelementptr inbounds float, float* %67, i64 %68
  store float %66, float* %69, align 4
  %70 = load float, float* %16, align 4
  %71 = load float*, float** %14, align 8
  %72 = load i64, i64* @YAW, align 8
  %73 = getelementptr inbounds float, float* %71, i64 %72
  store float %70, float* %73, align 4
  %74 = load float*, float** %14, align 8
  %75 = load i64, i64* @ROLL, align 8
  %76 = getelementptr inbounds float, float* %74, i64 %75
  store float 0.000000e+00, float* %76, align 4
  %77 = load float*, float** %14, align 8
  %78 = load float*, float** %13, align 8
  %79 = call i32 @AngleVectors(float* %77, float* %78, i32* null, i32* null)
  %80 = load i32, i32* @vec3_origin, align 4
  %81 = load float*, float** %13, align 8
  %82 = load float*, float** %13, align 8
  %83 = call i32 @VectorSubtract(i32 %80, float* %81, float* %82)
  %84 = load float*, float** %13, align 8
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 9, i32 0), align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call float @DotProduct(float* %84, i32 %87)
  store float %88, float* %8, align 4
  %89 = load float*, float** %13, align 8
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 9, i32 0), align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call float @DotProduct(float* %89, i32 %92)
  store float %93, float* %7, align 4
  %94 = load float*, float** %13, align 8
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 9, i32 0), align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call float @DotProduct(float* %94, i32 %97)
  store float %98, float* %9, align 4
  %99 = load float, float* %8, align 4
  %100 = load float*, float** %13, align 8
  %101 = getelementptr inbounds float, float* %100, i64 0
  store float %99, float* %101, align 4
  %102 = load float, float* %7, align 4
  %103 = load float*, float** %13, align 8
  %104 = getelementptr inbounds float, float* %103, i64 1
  store float %102, float* %104, align 4
  %105 = load float*, float** %13, align 8
  %106 = getelementptr inbounds float, float* %105, i64 2
  store float 0.000000e+00, float* %106, align 4
  %107 = load float*, float** %13, align 8
  %108 = call float @VectorLength(float* %107)
  store float %108, float* %15, align 4
  %109 = load float, float* %15, align 4
  %110 = fpext float %109 to double
  %111 = fcmp olt double %110, 1.000000e-01
  br i1 %111, label %112, label %113

112:                                              ; preds = %55
  store float 0x3FB99999A0000000, float* %15, align 4
  br label %113

113:                                              ; preds = %112, %55
  %114 = load float, float* %10, align 4
  %115 = load float, float* %7, align 4
  %116 = fmul float %114, %115
  store float %116, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 8
  %117 = load float, float* %10, align 4
  %118 = fneg float %117
  %119 = load float, float* %8, align 4
  %120 = fmul float %118, %119
  store float %120, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 3), align 4
  %121 = load float, float* %8, align 4
  %122 = fpext float %121 to double
  %123 = fcmp ole double %122, 1.000000e-01
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  store float 0x3FB99999A0000000, float* %8, align 4
  br label %125

125:                                              ; preds = %124, %113
  %126 = load float, float* %7, align 4
  %127 = fneg float %126
  %128 = load float, float* %8, align 4
  %129 = fdiv float %127, %128
  store float %129, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %130 = load float, float* %9, align 4
  %131 = load float, float* %15, align 4
  %132 = fdiv float %130, %131
  store float %132, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  br label %133

133:                                              ; preds = %125, %52
  %134 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %135 = fpext float %134 to double
  %136 = fcmp ogt double %135, 1.000000e+00
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store float 1.000000e+00, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  br label %138

138:                                              ; preds = %137, %133
  %139 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %140 = fpext float %139 to double
  %141 = fcmp olt double %140, -1.000000e+00
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store float -1.000000e+00, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  br label %143

143:                                              ; preds = %142, %138
  %144 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %145 = fpext float %144 to double
  %146 = fcmp ogt double %145, 1.000000e+00
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store float 1.000000e+00, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  br label %148

148:                                              ; preds = %147, %143
  %149 = load float, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %150 = fpext float %149 to double
  %151 = fcmp olt double %150, -1.000000e+00
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store float -1.000000e+00, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  br label %153

153:                                              ; preds = %152, %148
  %154 = load float, float* %10, align 4
  %155 = fcmp ogt float %154, 1.000000e+01
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store float 1.000000e+01, float* %10, align 4
  br label %157

157:                                              ; preds = %156, %153
  %158 = load float, float* %10, align 4
  store float %158, float* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 4), align 8
  %159 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 7), align 8
  %160 = load i64, i64* @DAMAGE_TIME, align 8
  %161 = add nsw i64 %159, %160
  store i64 %161, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 8), align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 5), align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 6), align 8
  ret void
}

declare dso_local i32 @AngleVectors(float*, float*, i32*, i32*) #1

declare dso_local i32 @VectorSubtract(i32, float*, float*) #1

declare dso_local float @DotProduct(float*, i32) #1

declare dso_local float @VectorLength(float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
