; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawCrosshair.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawCrosshair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_13__ = type { float, float, %struct.TYPE_17__, i64, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { float, float, float, float }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_22__ = type { float }
%struct.TYPE_21__ = type { float }
%struct.TYPE_20__ = type { float }
%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }

@cg_drawCrosshair = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@cg = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PERS_TEAM = common dso_local global i64 0, align 8
@TEAM_SPECTATOR = common dso_local global i64 0, align 8
@cg_crosshairHealth = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@cg_crosshairSize = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@ITEM_BLOB_TIME = common dso_local global float 0.000000e+00, align 4
@cg_crosshairX = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@cg_crosshairY = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@cgs = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@NUM_CROSSHAIRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawCrosshair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawCrosshair() #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_drawCrosshair, i32 0, i32 0), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %102

12:                                               ; preds = %0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 4), align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @PERS_TEAM, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TEAM_SPECTATOR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %102

23:                                               ; preds = %12
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 3), align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %102

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @cg_crosshairHealth, i32 0, i32 0), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @CG_ColorForHealth(i32* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @trap_R_SetColor(i32* %33)
  br label %37

35:                                               ; preds = %27
  %36 = call i32 @trap_R_SetColor(i32* null)
  br label %37

37:                                               ; preds = %35, %30
  %38 = load float, float* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @cg_crosshairSize, i32 0, i32 0), align 4
  store float %38, float* %2, align 4
  store float %38, float* %1, align 4
  %39 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 0), align 8
  %40 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 1), align 4
  %41 = fsub float %39, %40
  store float %41, float* %4, align 4
  %42 = load float, float* %4, align 4
  %43 = fcmp ogt float %42, 0.000000e+00
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load float, float* %4, align 4
  %46 = load float, float* @ITEM_BLOB_TIME, align 4
  %47 = fcmp olt float %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load float, float* @ITEM_BLOB_TIME, align 4
  %50 = load float, float* %4, align 4
  %51 = fdiv float %50, %49
  store float %51, float* %4, align 4
  %52 = load float, float* %4, align 4
  %53 = fadd float 1.000000e+00, %52
  %54 = load float, float* %1, align 4
  %55 = fmul float %54, %53
  store float %55, float* %1, align 4
  %56 = load float, float* %4, align 4
  %57 = fadd float 1.000000e+00, %56
  %58 = load float, float* %2, align 4
  %59 = fmul float %58, %57
  store float %59, float* %2, align 4
  br label %60

60:                                               ; preds = %48, %44, %37
  %61 = load float, float* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @cg_crosshairX, i32 0, i32 0), align 4
  store float %61, float* %5, align 4
  %62 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_crosshairY, i32 0, i32 0), align 4
  store float %62, float* %6, align 4
  %63 = call i32 @CG_AdjustFrom640(float* %5, float* %6, float* %1, float* %2)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_drawCrosshair, i32 0, i32 0), align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0, i32 0), align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @NUM_CROSSHAIRS, align 4
  %72 = srem i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  %76 = load float, float* %5, align 4
  %77 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2, i32 0), align 8
  %78 = fadd float %76, %77
  %79 = fpext float %78 to double
  %80 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2, i32 1), align 4
  %81 = load float, float* %1, align 4
  %82 = fsub float %80, %81
  %83 = fpext float %82 to double
  %84 = fmul double 5.000000e-01, %83
  %85 = fadd double %79, %84
  %86 = fptrunc double %85 to float
  %87 = load float, float* %6, align 4
  %88 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2, i32 2), align 8
  %89 = fadd float %87, %88
  %90 = fpext float %89 to double
  %91 = load float, float* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @cg, i32 0, i32 2, i32 3), align 4
  %92 = load float, float* %2, align 4
  %93 = fsub float %91, %92
  %94 = fpext float %93 to double
  %95 = fmul double 5.000000e-01, %94
  %96 = fadd double %90, %95
  %97 = fptrunc double %96 to float
  %98 = load float, float* %1, align 4
  %99 = load float, float* %2, align 4
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @trap_R_DrawStretchPic(float %86, float %97, float %98, float %99, i32 0, i32 0, i32 1, i32 1, i32 %100)
  br label %102

102:                                              ; preds = %68, %26, %22, %11
  ret void
}

declare dso_local i32 @CG_ColorForHealth(i32*) #1

declare dso_local i32 @trap_R_SetColor(i32*) #1

declare dso_local i32 @CG_AdjustFrom640(float*, float*, float*, float*) #1

declare dso_local i32 @trap_R_DrawStretchPic(float, float, float, float, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
