; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_DrawAwardsPresentation.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_DrawAwardsPresentation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }

@AWARD_PRESENTATION_TIME = common dso_local global i32 0, align 4
@ui_medalNames = common dso_local global i32* null, align 8
@postgameMenuInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UI_CENTER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@ui_medalSounds = common dso_local global i32* null, align 8
@qfalse = common dso_local global i32 0, align 4
@CHAN_ANNOUNCER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @UI_SPPostgameMenu_DrawAwardsPresentation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SPPostgameMenu_DrawAwardsPresentation(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @AWARD_PRESENTATION_TIME, align 4
  %8 = sdiv i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @AWARD_PRESENTATION_TIME, align 4
  %11 = srem i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load float*, float** %5, align 8
  %13 = getelementptr inbounds float, float* %12, i64 2
  store float 1.000000e+00, float* %13, align 4
  %14 = load float*, float** %5, align 8
  %15 = getelementptr inbounds float, float* %14, i64 1
  store float 1.000000e+00, float* %15, align 4
  %16 = load float*, float** %5, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  store float 1.000000e+00, float* %17, align 4
  %18 = load i32, i32* @AWARD_PRESENTATION_TIME, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sitofp i32 %20 to float
  %22 = load i32, i32* @AWARD_PRESENTATION_TIME, align 4
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %21, %23
  %25 = load float*, float** %5, align 8
  %26 = getelementptr inbounds float, float* %25, i64 3
  store float %24, float* %26, align 4
  %27 = load i32*, i32** @ui_medalNames, align 8
  %28 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 0), align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UI_CENTER, align 4
  %36 = load float*, float** %5, align 8
  %37 = call i32 @UI_DrawProportionalString(i32 320, i32 64, i32 %34, i32 %35, float* %36)
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i32 @UI_SPPostgameMenu_DrawAwardsMedals(i32 %39)
  %41 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 1), align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %1
  %48 = load i64, i64* @qtrue, align 8
  %49 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 1), align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  store i64 %48, i64* %52, align 8
  %53 = load i32*, i32** @ui_medalSounds, align 8
  %54 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @postgameMenuInfo, i32 0, i32 0), align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @qfalse, align 4
  %62 = call i32 @trap_S_RegisterSound(i32 %60, i32 %61)
  %63 = load i32, i32* @CHAN_ANNOUNCER, align 4
  %64 = call i32 @trap_S_StartLocalSound(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %47, %1
  ret void
}

declare dso_local i32 @UI_DrawProportionalString(i32, i32, i32, i32, float*) #1

declare dso_local i32 @UI_SPPostgameMenu_DrawAwardsMedals(i32) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #1

declare dso_local i32 @trap_S_RegisterSound(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
