; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_effects.c_CG_SmokePuff.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_effects.c_CG_SmokePuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i32, float, i32, i32, i32, double, float*, %struct.TYPE_9__, i32, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, float, i32, i32*, i32, i32, i32 }

@CG_SmokePuff.seed = internal global i32 146, align 4
@LE_MOVE_SCALE_FADE = common dso_local global i32 0, align 4
@TR_LINEAR = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLHW_RAGEPRO = common dso_local global i64 0, align 8
@RT_SPRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @CG_SmokePuff(i32 %0, i32 %1, float %2, float %3, float %4, float %5, float %6, float %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store float %2, float* %15, align 4
  store float %3, float* %16, align 4
  store float %4, float* %17, align 4
  store float %5, float* %18, align 4
  store float %6, float* %19, align 4
  store float %7, float* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %27 = call %struct.TYPE_13__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %25, align 8
  %28 = load i32, i32* %23, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load float, float* %15, align 4
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  store float %31, float* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 9
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %26, align 8
  %36 = call i32 @Q_random(i32* @CG_SmokePuff.seed)
  %37 = mul nsw i32 %36, 360
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load float, float* %15, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store float %40, float* %42, align 4
  %43 = load i32, i32* %21, align 4
  %44 = sitofp i32 %43 to float
  %45 = fdiv float %44, 1.000000e+03
  %46 = fptosi float %45 to i32
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @LE_MOVE_SCALE_FADE, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %21, align 4
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %22, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %21, align 4
  %59 = sitofp i32 %58 to float
  %60 = load float, float* %20, align 4
  %61 = fadd float %59, %60
  %62 = fptosi float %61 to i32
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %22, align 4
  %66 = load i32, i32* %21, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %12
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %71, %74
  %76 = sitofp i32 %75 to double
  %77 = fdiv double 1.000000e+00, %76
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 5
  store double %77, double* %79, align 8
  br label %92

80:                                               ; preds = %12
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %83, %86
  %88 = sitofp i32 %87 to double
  %89 = fdiv double 1.000000e+00, %88
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 5
  store double %89, double* %91, align 8
  br label %92

92:                                               ; preds = %80, %68
  %93 = load float, float* %16, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 6
  %96 = load float*, float** %95, align 8
  %97 = getelementptr inbounds float, float* %96, i64 0
  store float %93, float* %97, align 4
  %98 = load float, float* %17, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 6
  %101 = load float*, float** %100, align 8
  %102 = getelementptr inbounds float, float* %101, i64 1
  store float %98, float* %102, align 4
  %103 = load float, float* %18, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 6
  %106 = load float*, float** %105, align 8
  %107 = getelementptr inbounds float, float* %106, i64 2
  store float %103, float* %107, align 4
  %108 = load float, float* %19, align 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 6
  %111 = load float*, float** %110, align 8
  %112 = getelementptr inbounds float, float* %111, i64 3
  store float %108, float* %112, align 4
  %113 = load i32, i32* @TR_LINEAR, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 7
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @VectorCopy(i32 %121, i32 %125)
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @VectorCopy(i32 %127, i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @VectorCopy(i32 %133, i32 %136)
  %138 = load i32, i32* %24, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 1, i32 0), align 8
  %142 = load i64, i64* @GLHW_RAGEPRO, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %164

144:                                              ; preds = %92
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cgs, i32 0, i32 0, i32 0), align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 255, i32* %151, align 4
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 255, i32* %155, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  store i32 255, i32* %159, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  store i32 255, i32* %163, align 4
  br label %202

164:                                              ; preds = %92
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 6
  %167 = load float*, float** %166, align 8
  %168 = getelementptr inbounds float, float* %167, i64 0
  %169 = load float, float* %168, align 4
  %170 = fmul float %169, 2.550000e+02
  %171 = fptosi float %170 to i32
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %171, i32* %175, align 4
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 6
  %178 = load float*, float** %177, align 8
  %179 = getelementptr inbounds float, float* %178, i64 1
  %180 = load float, float* %179, align 4
  %181 = fmul float %180, 2.550000e+02
  %182 = fptosi float %181 to i32
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %182, i32* %186, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 6
  %189 = load float*, float** %188, align 8
  %190 = getelementptr inbounds float, float* %189, i64 2
  %191 = load float, float* %190, align 4
  %192 = fmul float %191, 2.550000e+02
  %193 = fptosi float %192 to i32
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  store i32 %193, i32* %197, align 4
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  store i32 255, i32* %201, align 4
  br label %202

202:                                              ; preds = %164, %144
  %203 = load i32, i32* @RT_SPRITE, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 8
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = load float, float* %207, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  store float %208, float* %210, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  ret %struct.TYPE_13__* %211
}

declare dso_local %struct.TYPE_13__* @CG_AllocLocalEntity(...) #1

declare dso_local i32 @Q_random(i32*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
