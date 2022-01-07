; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Model_Paint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_Model_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)*, i32 (...)*, i32 (i32, double*, double*)* }
%struct.TYPE_15__ = type { float, float, float, float, float, float, i64, double*, double*, i32, double*, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { double, i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { float, float, i64, i32 }

@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@DC = common dso_local global %struct.TYPE_12__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@RF_LIGHTING_ORIGIN = common dso_local global i32 0, align 4
@RF_NOSHADOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_Model_Paint(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.TYPE_15__, align 8
  %8 = alloca %struct.TYPE_15__, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca float, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %13, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %20 = icmp eq %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %225

22:                                               ; preds = %1
  %23 = call i32 @memset(%struct.TYPE_15__* %7, i32 0, i32 80)
  %24 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 14
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 13
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @AxisClear(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = sitofp i32 %34 to float
  store float %35, float* %3, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  %42 = sitofp i32 %41 to float
  store float %42, float* %4, align 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 2
  %49 = sitofp i32 %48 to float
  store float %49, float* %5, align 4
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 2
  %56 = sitofp i32 %55 to float
  store float %56, float* %6, align 4
  %57 = call i32 @AdjustFrom640(float* %3, float* %4, float* %5, float* %6)
  %58 = load float, float* %3, align 4
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  store float %58, float* %59, align 8
  %60 = load float, float* %4, align 4
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  store float %60, float* %61, align 4
  %62 = load float, float* %5, align 4
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 2
  store float %62, float* %63, align 8
  %64 = load float, float* %6, align 4
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 3
  store float %64, float* %65, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 4
  %68 = load i32 (i32, double*, double*)*, i32 (i32, double*, double*)** %67, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load double*, double** %9, align 8
  %73 = load double*, double** %10, align 8
  %74 = call i32 %68(i32 %71, double* %72, double* %73)
  %75 = load double*, double** %9, align 8
  %76 = getelementptr inbounds double, double* %75, i64 2
  %77 = load double, double* %76, align 8
  %78 = load double*, double** %10, align 8
  %79 = getelementptr inbounds double, double* %78, i64 2
  %80 = load double, double* %79, align 8
  %81 = fadd double %77, %80
  %82 = fmul double -5.000000e-01, %81
  %83 = load double*, double** %11, align 8
  %84 = getelementptr inbounds double, double* %83, i64 2
  store double %82, double* %84, align 8
  %85 = load double*, double** %9, align 8
  %86 = getelementptr inbounds double, double* %85, i64 1
  %87 = load double, double* %86, align 8
  %88 = load double*, double** %10, align 8
  %89 = getelementptr inbounds double, double* %88, i64 1
  %90 = load double, double* %89, align 8
  %91 = fadd double %87, %90
  %92 = fmul double 5.000000e-01, %91
  %93 = load double*, double** %11, align 8
  %94 = getelementptr inbounds double, double* %93, i64 1
  store double %92, double* %94, align 8
  %95 = load i64, i64* @qtrue, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %22
  %98 = load double*, double** %10, align 8
  %99 = getelementptr inbounds double, double* %98, i64 2
  %100 = load double, double* %99, align 8
  %101 = load double*, double** %9, align 8
  %102 = getelementptr inbounds double, double* %101, i64 2
  %103 = load double, double* %102, align 8
  %104 = fsub double %100, %103
  %105 = fmul double 5.000000e-01, %104
  %106 = fptrunc double %105 to float
  store float %106, float* %14, align 4
  %107 = load float, float* %14, align 4
  %108 = fpext float %107 to double
  %109 = fdiv double %108, 2.680000e-01
  %110 = load double*, double** %11, align 8
  %111 = getelementptr inbounds double, double* %110, i64 0
  store double %109, double* %111, align 8
  br label %118

112:                                              ; preds = %22
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load double, double* %114, align 8
  %116 = load double*, double** %11, align 8
  %117 = getelementptr inbounds double, double* %116, i64 0
  store double %115, double* %117, align 8
  br label %118

118:                                              ; preds = %112, %97
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load float, float* %120, align 8
  %122 = fcmp une float %121, 0.000000e+00
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load float, float* %125, align 8
  br label %129

127:                                              ; preds = %118
  %128 = load float, float* %5, align 4
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi float [ %126, %123 ], [ %128, %127 ]
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 4
  store float %130, float* %131, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load float, float* %133, align 4
  %135 = fcmp une float %134, 0.000000e+00
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load float, float* %138, align 4
  br label %142

140:                                              ; preds = %129
  %141 = load float, float* %6, align 4
  br label %142

142:                                              ; preds = %140, %136
  %143 = phi float [ %139, %136 ], [ %141, %140 ]
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  store float %143, float* %144, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 3
  %147 = load i32 (...)*, i32 (...)** %146, align 8
  %148 = call i32 (...) %147()
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 6
  store i64 %151, i64* %152, align 8
  %153 = call i32 @memset(%struct.TYPE_15__* %8, i32 0, i32 80)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %186

158:                                              ; preds = %142
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %161, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %158
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %170, %173
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  store i64 %174, i64* %177, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  %182 = srem i32 %181, 360
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %167, %158
  br label %186

186:                                              ; preds = %185, %142
  %187 = load double*, double** %12, align 8
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @VectorSet(double* %187, i32 0, i32 %190, i32 0)
  %192 = load double*, double** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 12
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @AnglesToAxis(double* %192, i32 %194)
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 11
  store i32 %198, i32* %199, align 8
  %200 = load double*, double** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 7
  %202 = load double*, double** %201, align 8
  %203 = call i32 @VectorCopy(double* %200, double* %202)
  %204 = load double*, double** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 8
  %206 = load double*, double** %205, align 8
  %207 = call i32 @VectorCopy(double* %204, double* %206)
  %208 = load i32, i32* @RF_LIGHTING_ORIGIN, align 4
  %209 = load i32, i32* @RF_NOSHADOW, align 4
  %210 = or i32 %208, %209
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 9
  store i32 %210, i32* %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 7
  %213 = load double*, double** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 10
  %215 = load double*, double** %214, align 8
  %216 = call i32 @VectorCopy(double* %213, double* %215)
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 2
  %219 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %218, align 8
  %220 = call i32 %219(%struct.TYPE_15__* %8)
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** @DC, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 1
  %223 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %222, align 8
  %224 = call i32 %223(%struct.TYPE_15__* %7)
  br label %225

225:                                              ; preds = %186, %21
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @AxisClear(i32) #1

declare dso_local i32 @AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @VectorSet(double*, i32, i32, i32) #1

declare dso_local i32 @AnglesToAxis(double*, i32) #1

declare dso_local i32 @VectorCopy(double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
