; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawTeamBackground.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawTeamBackground.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TEAM_RED = common dso_local global i32 0, align 4
@TEAM_BLUE = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_DrawTeamBackground(i32 %0, i32 %1, i32 %2, i32 %3, float %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load float, float* %11, align 4
  %15 = load float*, float** %13, align 8
  %16 = getelementptr inbounds float, float* %15, i64 3
  store float %14, float* %16, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @TEAM_RED, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load float*, float** %13, align 8
  %22 = getelementptr inbounds float, float* %21, i64 0
  store float 1.000000e+00, float* %22, align 4
  %23 = load float*, float** %13, align 8
  %24 = getelementptr inbounds float, float* %23, i64 1
  store float 0.000000e+00, float* %24, align 4
  %25 = load float*, float** %13, align 8
  %26 = getelementptr inbounds float, float* %25, i64 2
  store float 0.000000e+00, float* %26, align 4
  br label %40

27:                                               ; preds = %6
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @TEAM_BLUE, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load float*, float** %13, align 8
  %33 = getelementptr inbounds float, float* %32, i64 0
  store float 0.000000e+00, float* %33, align 4
  %34 = load float*, float** %13, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float 0.000000e+00, float* %35, align 4
  %36 = load float*, float** %13, align 8
  %37 = getelementptr inbounds float, float* %36, i64 2
  store float 1.000000e+00, float* %37, align 4
  br label %39

38:                                               ; preds = %27
  br label %50

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %20
  %41 = load float*, float** %13, align 8
  %42 = call i32 @trap_R_SetColor(float* %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cgs, i32 0, i32 0, i32 0), align 4
  %48 = call i32 @CG_DrawPic(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = call i32 @trap_R_SetColor(float* null)
  br label %50

50:                                               ; preds = %40, %38
  ret void
}

declare dso_local i32 @trap_R_SetColor(float*) #1

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
