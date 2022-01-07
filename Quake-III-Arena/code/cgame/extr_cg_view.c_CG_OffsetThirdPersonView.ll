; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_OffsetThirdPersonView.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_view.c_CG_OffsetThirdPersonView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64*, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { float }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { double, i32* }

@CG_OffsetThirdPersonView.mins = internal global i32* inttoptr (i64 -4 to i32*), align 8
@CG_OffsetThirdPersonView.maxs = internal global i32* inttoptr (i64 4 to i32*), align 8
@cg = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@STAT_DEAD_YAW = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@FOCUS_DISTANCE = common dso_local global float 0.000000e+00, align 4
@cg_thirdPersonAngle = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@M_PI = common dso_local global i32 0, align 4
@cg_thirdPersonRange = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@cg_cameraMode = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@MASK_SOLID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_OffsetThirdPersonView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_OffsetThirdPersonView() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2, i32 2), align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %11
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @VectorCopy(i32* %18, i32* %19)
  %21 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2, i32 0), align 8
  %22 = load i64, i64* @STAT_HEALTH, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %0
  %27 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2, i32 0), align 8
  %28 = load i64, i64* @STAT_DEAD_YAW, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %5, align 8
  %33 = load i64, i64* @YAW, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %31, i32* %34, align 4
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2, i32 0), align 8
  %36 = load i64, i64* @STAT_DEAD_YAW, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %41 = load i64, i64* @YAW, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %26, %0
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* @PITCH, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 45
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32*, i32** %5, align 8
  %51 = load i64, i64* @PITCH, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 45, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32*, i32** %5, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @AngleVectors(i32* %54, i32* %55, i32* null, i32* null)
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %58 = load float, float* @FOCUS_DISTANCE, align 4
  %59 = load i32*, i32** %1, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @VectorMA(i32* %57, float %58, i32* %59, i32* %60)
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @VectorCopy(i32* %62, i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 8
  store i32 %68, i32* %66, align 4
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %70 = load i64, i64* @PITCH, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sitofp i32 %72 to double
  %74 = fmul double %73, 5.000000e-01
  %75 = fptosi double %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %77 = load i32*, i32** %1, align 8
  %78 = load i32*, i32** %2, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @AngleVectors(i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_thirdPersonAngle, i32 0, i32 0), align 4
  %82 = sdiv i32 %81, 180
  %83 = load i32, i32* @M_PI, align 4
  %84 = mul nsw i32 %82, %83
  %85 = call float @cos(i32 %84)
  store float %85, float* %9, align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_thirdPersonAngle, i32 0, i32 0), align 4
  %87 = sdiv i32 %86, 180
  %88 = load i32, i32* @M_PI, align 4
  %89 = mul nsw i32 %87, %88
  %90 = call float @sin(i32 %89)
  store float %90, float* %10, align 4
  %91 = load i32*, i32** %4, align 8
  %92 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_thirdPersonRange, i32 0, i32 0), align 4
  %93 = fneg float %92
  %94 = load float, float* %9, align 4
  %95 = fmul float %93, %94
  %96 = load i32*, i32** %1, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @VectorMA(i32* %91, float %95, i32* %96, i32* %97)
  %99 = load i32*, i32** %4, align 8
  %100 = load float, float* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_thirdPersonRange, i32 0, i32 0), align 4
  %101 = fneg float %100
  %102 = load float, float* %10, align 4
  %103 = fmul float %101, %102
  %104 = load i32*, i32** %2, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @VectorMA(i32* %99, float %103, i32* %104, i32* %105)
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cg_cameraMode, i32 0, i32 0), align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %147, label %109

109:                                              ; preds = %53
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %111 = load i32*, i32** @CG_OffsetThirdPersonView.mins, align 8
  %112 = load i32*, i32** @CG_OffsetThirdPersonView.maxs, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2, i32 1), align 8
  %115 = load i32, i32* @MASK_SOLID, align 4
  %116 = call i32 @CG_Trace(%struct.TYPE_11__* %6, i32* %110, i32* %111, i32* %112, i32* %113, i32 %114, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %118 = load double, double* %117, align 8
  %119 = fcmp une double %118, 1.000000e+00
  br i1 %119, label %120, label %146

120:                                              ; preds = %109
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @VectorCopy(i32* %122, i32* %123)
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %126 = load double, double* %125, align 8
  %127 = fsub double 1.000000e+00, %126
  %128 = fmul double %127, 3.200000e+01
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = sitofp i32 %131 to double
  %133 = fadd double %132, %128
  %134 = fptosi double %133 to i32
  store i32 %134, i32* %130, align 4
  %135 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %136 = load i32*, i32** @CG_OffsetThirdPersonView.mins, align 8
  %137 = load i32*, i32** @CG_OffsetThirdPersonView.maxs, align 8
  %138 = load i32*, i32** %4, align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 2, i32 1), align 8
  %140 = load i32, i32* @MASK_SOLID, align 4
  %141 = call i32 @CG_Trace(%struct.TYPE_11__* %6, i32* %135, i32* %136, i32* %137, i32* %138, i32 %139, i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @VectorCopy(i32* %143, i32* %144)
  br label %146

146:                                              ; preds = %120, %109
  br label %147

147:                                              ; preds = %146, %53
  %148 = load i32*, i32** %4, align 8
  %149 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %150 = call i32 @VectorCopy(i32* %148, i32* %149)
  %151 = load i32*, i32** %7, align 8
  %152 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 1, i32 0), align 8
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @VectorSubtract(i32* %151, i32* %152, i32* %153)
  %155 = load i32*, i32** %7, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %157, %160
  %162 = load i32*, i32** %7, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %164, %167
  %169 = add nsw i32 %161, %168
  %170 = call float @sqrt(i32 %169)
  store float %170, float* %8, align 4
  %171 = load float, float* %8, align 4
  %172 = fcmp olt float %171, 1.000000e+00
  br i1 %172, label %173, label %174

173:                                              ; preds = %147
  store float 1.000000e+00, float* %8, align 4
  br label %174

174:                                              ; preds = %173, %147
  %175 = load i32, i32* @M_PI, align 4
  %176 = sdiv i32 -180, %175
  %177 = load i32*, i32** %7, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = load float, float* %8, align 4
  %181 = call i32 @atan2(i32 %179, float %180)
  %182 = mul nsw i32 %176, %181
  %183 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %184 = load i64, i64* @PITCH, align 8
  %185 = getelementptr inbounds i32, i32* %183, i64 %184
  store i32 %182, i32* %185, align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg_thirdPersonAngle, i32 0, i32 0), align 4
  %187 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @cg, i32 0, i32 0), align 8
  %188 = load i64, i64* @YAW, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %190, %186
  store i32 %191, i32* %189, align 4
  ret void
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @AngleVectors(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @VectorMA(i32*, float, i32*, i32*) #1

declare dso_local float @cos(i32) #1

declare dso_local float @sin(i32) #1

declare dso_local i32 @CG_Trace(%struct.TYPE_11__*, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32*, i32*, i32*) #1

declare dso_local float @sqrt(i32) #1

declare dso_local i32 @atan2(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
