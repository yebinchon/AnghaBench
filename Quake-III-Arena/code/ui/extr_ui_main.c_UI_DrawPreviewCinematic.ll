; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawPreviewCinematic.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawPreviewCinematic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@uiInfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s.roq\00", align 1
@CIN_loop = common dso_local global i32 0, align 4
@CIN_silent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, float, i32)* @UI_DrawPreviewCinematic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawPreviewCinematic(%struct.TYPE_4__* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  %8 = icmp sgt i32 %7, -2
  br i1 %8, label %9, label %42

9:                                                ; preds = %3
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 2), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 1), align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @va(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @CIN_loop, align 4
  %16 = load i32, i32* @CIN_silent, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @trap_CIN_PlayCinematic(i32 %14, i32 0, i32 0, i32 0, i32 0, i32 %17)
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %9
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  %23 = call i32 @trap_CIN_RunCinematic(i32 %22)
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @trap_CIN_SetExtents(i32 %24, i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  %39 = call i32 @trap_CIN_DrawCinematic(i32 %38)
  br label %41

40:                                               ; preds = %9
  store i32 -2, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @uiInfo, i32 0, i32 0), align 8
  br label %41

41:                                               ; preds = %40, %21
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

declare dso_local i32 @trap_CIN_PlayCinematic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

declare dso_local i32 @trap_CIN_RunCinematic(i32) #1

declare dso_local i32 @trap_CIN_SetExtents(i32, i32, i32, i32, i32) #1

declare dso_local i32 @trap_CIN_DrawCinematic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
