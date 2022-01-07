; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawAttacker.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawAttacker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64*, i32* }

@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@PERS_ATTACKER = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i32 0, align 4
@ATTACKER_HEAD_TIME = common dso_local global i32 0, align 4
@ICON_SIZE = common dso_local global double 0.000000e+00, align 8
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@CS_PLAYERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"n\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @CG_DrawAttacker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @CG_DrawAttacker(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store float %0, float* %3, align 4
  %10 = load i64*, i64** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 3, i32 0), align 8
  %11 = load i64, i64* @STAT_HEALTH, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load float, float* %3, align 4
  store float %16, float* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load float, float* %3, align 4
  store float %21, float* %2, align 4
  br label %95

22:                                               ; preds = %17
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 3, i32 1), align 8
  %24 = load i64, i64* @PERS_ATTACKER, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MAX_CLIENTS, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 2), align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33, %29, %22
  %41 = load float, float* %3, align 4
  store float %41, float* %2, align 4
  br label %95

42:                                               ; preds = %33
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ATTACKER_HEAD_TIME, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %50 = load float, float* %3, align 4
  store float %50, float* %2, align 4
  br label %95

51:                                               ; preds = %42
  %52 = load double, double* @ICON_SIZE, align 8
  %53 = fmul double %52, 1.250000e+00
  %54 = fptrunc double %53 to float
  store float %54, float* %5, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i64, i64* @PITCH, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 0, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i64, i64* @YAW, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 180, i32* %60, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* @ROLL, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 0, i32* %63, align 4
  %64 = load float, float* %5, align 4
  %65 = fsub float 6.400000e+02, %64
  %66 = fptosi float %65 to i32
  %67 = load float, float* %3, align 4
  %68 = load float, float* %5, align 4
  %69 = load float, float* %5, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @CG_DrawHead(i32 %66, float %67, float %68, float %69, i32 %70, i32* %71)
  %73 = load i64, i64* @CS_PLAYERS, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %73, %75
  %77 = call i8* @CG_ConfigString(i64 %76)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @Info_ValueForKey(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %79, i8** %8, align 8
  %80 = load float, float* %5, align 4
  %81 = load float, float* %3, align 4
  %82 = fadd float %81, %80
  store float %82, float* %3, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @Q_PrintStrlen(i8* %83)
  %85 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sub nsw i32 640, %86
  %88 = load float, float* %3, align 4
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @CG_DrawBigString(i32 %87, float %88, i8* %89, double 5.000000e-01)
  %91 = load float, float* %3, align 4
  %92 = load float, float* @BIGCHAR_HEIGHT, align 4
  %93 = fadd float %91, %92
  %94 = fadd float %93, 2.000000e+00
  store float %94, float* %2, align 4
  br label %95

95:                                               ; preds = %51, %49, %40, %20, %15
  %96 = load float, float* %2, align 4
  ret float %96
}

declare dso_local i32 @CG_DrawHead(i32, float, float, float, i32, i32*) #1

declare dso_local i8* @CG_ConfigString(i64) #1

declare dso_local i8* @Info_ValueForKey(i8*, i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, float, i8*, double) #1

declare dso_local i32 @Q_PrintStrlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
