; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawTier.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawTier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"ui_currentTier\00", align 1
@uiInfo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Tier: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, float, i32, i32)* @UI_DrawTier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawTier(%struct.TYPE_6__* %0, float %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uiInfo, i32 0, i32 0), align 8
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %4
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %17, %13
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load float, float* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @uiInfo, i32 0, i32 1), align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @va(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @Text_Paint(i32 %21, i32 %24, float %25, i32 %26, i32 %33, i32 0, i32 0, i32 %34)
  ret void
}

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @Text_Paint(i32, i32, float, i32, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
