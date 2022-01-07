; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawPlayerHead.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_newdraw.c_CG_DrawPlayerHead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { float, float, float, i32, i32, i32, i64, i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { float, double, i32, i32 }

@cg = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@DAMAGE_TIME = common dso_local global float 0.000000e+00, align 4
@M_PI = common dso_local global i32 0, align 4
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @CG_DrawPlayerHead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawPlayerHead(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load float, float* %11, align 8
  store float %12, float* %9, align 4
  %13 = load float*, float** %5, align 8
  %14 = call i32 @VectorClear(float* %13)
  %15 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %16 = fcmp une float %15, 0.000000e+00
  br i1 %16, label %17, label %84

17:                                               ; preds = %2
  %18 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %19 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %20 = fsub float %18, %19
  %21 = load float, float* @DAMAGE_TIME, align 4
  %22 = fcmp olt float %20, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %25 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 0), align 8
  %26 = fsub float %24, %25
  %27 = load float, float* @DAMAGE_TIME, align 4
  %28 = fdiv float %26, %27
  store float %28, float* %8, align 4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load double, double* %30, align 8
  %32 = fmul double %31, 1.250000e+00
  %33 = load float, float* %8, align 4
  %34 = fpext float %33 to double
  %35 = fmul double %34, 5.000000e-01
  %36 = fsub double 1.500000e+00, %35
  %37 = fmul double %32, %36
  %38 = fptrunc double %37 to float
  store float %38, float* %6, align 4
  %39 = load float, float* %6, align 4
  %40 = fpext float %39 to double
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load double, double* %42, align 8
  %44 = fmul double %43, 1.250000e+00
  %45 = fsub double %40, %44
  %46 = fptrunc double %45 to float
  store float %46, float* %7, align 4
  %47 = load float, float* %7, align 4
  %48 = fpext float %47 to double
  %49 = fmul double %48, 5.000000e-01
  %50 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 2), align 8
  %51 = load float, float* %7, align 4
  %52 = fmul float %50, %51
  %53 = fpext float %52 to double
  %54 = fmul double %53, 5.000000e-01
  %55 = fadd double %49, %54
  %56 = load float, float* %9, align 4
  %57 = fpext float %56 to double
  %58 = fsub double %57, %55
  %59 = fptrunc double %58 to float
  store float %59, float* %9, align 4
  %60 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 2), align 8
  %61 = fmul float %60, 4.500000e+01
  %62 = fadd float 1.800000e+02, %61
  %63 = fptosi float %62 to i32
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 3), align 4
  %64 = call i32 (...) @crandom()
  %65 = load i32, i32* @M_PI, align 4
  %66 = mul nsw i32 %64, %65
  %67 = call i32 @cos(i32 %66)
  %68 = mul nsw i32 20, %67
  %69 = add nsw i32 180, %68
  store i32 %69, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 4), align 8
  %70 = call i32 (...) @crandom()
  %71 = load i32, i32* @M_PI, align 4
  %72 = mul nsw i32 %70, %71
  %73 = call i32 @cos(i32 %72)
  %74 = mul nsw i32 5, %73
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 5), align 4
  %75 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %76 = fptosi float %75 to i64
  store i64 %76, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 6), align 8
  %77 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %78 = fadd float %77, 1.000000e+02
  %79 = call i32 (...) @random()
  %80 = mul nsw i32 %79, 2000
  %81 = sitofp i32 %80 to float
  %82 = fadd float %78, %81
  %83 = fptosi float %82 to i64
  store i64 %83, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 7), align 8
  br label %117

84:                                               ; preds = %17, %2
  %85 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 7), align 8
  %87 = sitofp i64 %86 to float
  %88 = fcmp oge float %85, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %84
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 4), align 8
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 3), align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 5), align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 8), align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 7), align 8
  store i64 %92, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 6), align 8
  %93 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %94 = fadd float %93, 1.000000e+02
  %95 = call i32 (...) @random()
  %96 = mul nsw i32 %95, 2000
  %97 = sitofp i32 %96 to float
  %98 = fadd float %94, %97
  %99 = fptosi float %98 to i64
  store i64 %99, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 7), align 8
  %100 = call i32 (...) @crandom()
  %101 = load i32, i32* @M_PI, align 4
  %102 = mul nsw i32 %100, %101
  %103 = call i32 @cos(i32 %102)
  %104 = mul nsw i32 20, %103
  %105 = add nsw i32 180, %104
  store i32 %105, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 4), align 8
  %106 = call i32 (...) @crandom()
  %107 = load i32, i32* @M_PI, align 4
  %108 = mul nsw i32 %106, %107
  %109 = call i32 @cos(i32 %108)
  %110 = mul nsw i32 5, %109
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 5), align 4
  br label %111

111:                                              ; preds = %89, %84
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = load double, double* %113, align 8
  %115 = fmul double %114, 1.250000e+00
  %116 = fptrunc double %115 to float
  store float %116, float* %6, align 4
  br label %117

117:                                              ; preds = %111, %23
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 6), align 8
  %119 = sitofp i64 %118 to float
  %120 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %121 = fcmp ogt float %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %124 = fptosi float %123 to i64
  store i64 %124, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 6), align 8
  br label %125

125:                                              ; preds = %122, %117
  %126 = load float, float* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 1), align 4
  %127 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 6), align 8
  %128 = sitofp i64 %127 to float
  %129 = fsub float %126, %128
  %130 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 7), align 8
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 6), align 8
  %132 = sub nsw i64 %130, %131
  %133 = sitofp i64 %132 to float
  %134 = fdiv float %129, %133
  store float %134, float* %8, align 4
  %135 = load float, float* %8, align 4
  %136 = load float, float* %8, align 4
  %137 = fmul float %135, %136
  %138 = load float, float* %8, align 4
  %139 = fmul float 2.000000e+00, %138
  %140 = fsub float 3.000000e+00, %139
  %141 = fmul float %137, %140
  store float %141, float* %8, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 3), align 4
  %143 = sitofp i32 %142 to float
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 4), align 8
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 3), align 4
  %146 = sub nsw i32 %144, %145
  %147 = sitofp i32 %146 to float
  %148 = load float, float* %8, align 4
  %149 = fmul float %147, %148
  %150 = fadd float %143, %149
  %151 = load float*, float** %5, align 8
  %152 = load i64, i64* @YAW, align 8
  %153 = getelementptr inbounds float, float* %151, i64 %152
  store float %150, float* %153, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 8), align 8
  %155 = sitofp i32 %154 to float
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 5), align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 8), align 8
  %158 = sub nsw i32 %156, %157
  %159 = sitofp i32 %158 to float
  %160 = load float, float* %8, align 4
  %161 = fmul float %159, %160
  %162 = fadd float %155, %161
  %163 = load float*, float** %5, align 8
  %164 = load i64, i64* @PITCH, align 8
  %165 = getelementptr inbounds float, float* %163, i64 %164
  store float %162, float* %165, align 4
  %166 = load float, float* %9, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load double, double* %171, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cg, i32 0, i32 9), align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load float*, float** %5, align 8
  %181 = call i32 @CG_DrawHead(float %166, i32 %169, double %172, i32 %175, i32 %179, float* %180)
  ret void
}

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @CG_DrawHead(float, i32, double, i32, i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
