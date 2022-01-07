; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawStatusBarHead.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawStatusBarHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float, float, i32, i32, i32, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@DAMAGE_TIME = common dso_local global float 0.000000e+00, align 4
@ICON_SIZE = common dso_local global double 0.000000e+00, align 8
@M_PI = common dso_local global i32 0, align 4
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float)* @CG_DrawStatusBarHead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawStatusBarHead(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float*, align 8
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %2, align 4
  %7 = load float*, float** %3, align 8
  %8 = call i32 @VectorClear(float* %7)
  %9 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %10 = fcmp une float %9, 0.000000e+00
  br i1 %10, label %11, label %74

11:                                               ; preds = %1
  %12 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %13 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %14 = fsub float %12, %13
  %15 = load float, float* @DAMAGE_TIME, align 4
  %16 = fcmp olt float %14, %15
  br i1 %16, label %17, label %74

17:                                               ; preds = %11
  %18 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %19 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 8
  %20 = fsub float %18, %19
  %21 = load float, float* @DAMAGE_TIME, align 4
  %22 = fdiv float %20, %21
  store float %22, float* %6, align 4
  %23 = load double, double* @ICON_SIZE, align 8
  %24 = fmul double %23, 1.250000e+00
  %25 = load float, float* %6, align 4
  %26 = fpext float %25 to double
  %27 = fmul double %26, 5.000000e-01
  %28 = fsub double 1.500000e+00, %27
  %29 = fmul double %24, %28
  %30 = fptrunc double %29 to float
  store float %30, float* %4, align 4
  %31 = load float, float* %4, align 4
  %32 = fpext float %31 to double
  %33 = load double, double* @ICON_SIZE, align 8
  %34 = fmul double %33, 1.250000e+00
  %35 = fsub double %32, %34
  %36 = fptrunc double %35 to float
  store float %36, float* %5, align 4
  %37 = load float, float* %5, align 4
  %38 = fpext float %37 to double
  %39 = fmul double %38, 5.000000e-01
  %40 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 2), align 8
  %41 = load float, float* %5, align 4
  %42 = fmul float %40, %41
  %43 = fpext float %42 to double
  %44 = fmul double %43, 5.000000e-01
  %45 = fadd double %39, %44
  %46 = load float, float* %2, align 4
  %47 = fpext float %46 to double
  %48 = fsub double %47, %45
  %49 = fptrunc double %48 to float
  store float %49, float* %2, align 4
  %50 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 2), align 8
  %51 = fmul float %50, 4.500000e+01
  %52 = fadd float 1.800000e+02, %51
  %53 = fptosi float %52 to i32
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3), align 4
  %54 = call i32 (...) @crandom()
  %55 = load i32, i32* @M_PI, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i32 @cos(i32 %56)
  %58 = mul nsw i32 20, %57
  %59 = add nsw i32 180, %58
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 4), align 8
  %60 = call i32 (...) @crandom()
  %61 = load i32, i32* @M_PI, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i32 @cos(i32 %62)
  %64 = mul nsw i32 5, %63
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 5), align 4
  %65 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %66 = fptosi float %65 to i64
  store i64 %66, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 6), align 8
  %67 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %68 = fadd float %67, 1.000000e+02
  %69 = call i32 (...) @random()
  %70 = mul nsw i32 %69, 2000
  %71 = sitofp i32 %70 to float
  %72 = fadd float %68, %71
  %73 = fptosi float %72 to i64
  store i64 %73, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 7), align 8
  br label %105

74:                                               ; preds = %11, %1
  %75 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 7), align 8
  %77 = sitofp i64 %76 to float
  %78 = fcmp oge float %75, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %74
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 4), align 8
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 5), align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 8), align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 7), align 8
  store i64 %82, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 6), align 8
  %83 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %84 = fadd float %83, 1.000000e+02
  %85 = call i32 (...) @random()
  %86 = mul nsw i32 %85, 2000
  %87 = sitofp i32 %86 to float
  %88 = fadd float %84, %87
  %89 = fptosi float %88 to i64
  store i64 %89, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 7), align 8
  %90 = call i32 (...) @crandom()
  %91 = load i32, i32* @M_PI, align 4
  %92 = mul nsw i32 %90, %91
  %93 = call i32 @cos(i32 %92)
  %94 = mul nsw i32 20, %93
  %95 = add nsw i32 180, %94
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 4), align 8
  %96 = call i32 (...) @crandom()
  %97 = load i32, i32* @M_PI, align 4
  %98 = mul nsw i32 %96, %97
  %99 = call i32 @cos(i32 %98)
  %100 = mul nsw i32 5, %99
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 5), align 4
  br label %101

101:                                              ; preds = %79, %74
  %102 = load double, double* @ICON_SIZE, align 8
  %103 = fmul double %102, 1.250000e+00
  %104 = fptrunc double %103 to float
  store float %104, float* %4, align 4
  br label %105

105:                                              ; preds = %101, %17
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 6), align 8
  %107 = sitofp i64 %106 to float
  %108 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %109 = fcmp ogt float %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %112 = fptosi float %111 to i64
  store i64 %112, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 6), align 8
  br label %113

113:                                              ; preds = %110, %105
  %114 = load float, float* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 1), align 4
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 6), align 8
  %116 = sitofp i64 %115 to float
  %117 = fsub float %114, %116
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 7), align 8
  %119 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 6), align 8
  %120 = sub nsw i64 %118, %119
  %121 = sitofp i64 %120 to float
  %122 = fdiv float %117, %121
  store float %122, float* %6, align 4
  %123 = load float, float* %6, align 4
  %124 = load float, float* %6, align 4
  %125 = fmul float %123, %124
  %126 = load float, float* %6, align 4
  %127 = fmul float 2.000000e+00, %126
  %128 = fsub float 3.000000e+00, %127
  %129 = fmul float %125, %128
  store float %129, float* %6, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3), align 4
  %131 = sitofp i32 %130 to float
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 4), align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 3), align 4
  %134 = sub nsw i32 %132, %133
  %135 = sitofp i32 %134 to float
  %136 = load float, float* %6, align 4
  %137 = fmul float %135, %136
  %138 = fadd float %131, %137
  %139 = load float*, float** %3, align 8
  %140 = load i64, i64* @YAW, align 8
  %141 = getelementptr inbounds float, float* %139, i64 %140
  store float %138, float* %141, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 8), align 8
  %143 = sitofp i32 %142 to float
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 5), align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 8), align 8
  %146 = sub nsw i32 %144, %145
  %147 = sitofp i32 %146 to float
  %148 = load float, float* %6, align 4
  %149 = fmul float %147, %148
  %150 = fadd float %143, %149
  %151 = load float*, float** %3, align 8
  %152 = load i64, i64* @PITCH, align 8
  %153 = getelementptr inbounds float, float* %151, i64 %152
  store float %150, float* %153, align 4
  %154 = load float, float* %2, align 4
  %155 = load float, float* %4, align 4
  %156 = fsub float 4.800000e+02, %155
  %157 = fptosi float %156 to i32
  %158 = load float, float* %4, align 4
  %159 = load float, float* %4, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 9), align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load float*, float** %3, align 8
  %165 = call i32 @CG_DrawHead(float %154, i32 %157, float %158, float %159, i32 %163, float* %164)
  ret void
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @CG_DrawHead(float, i32, float, float, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
