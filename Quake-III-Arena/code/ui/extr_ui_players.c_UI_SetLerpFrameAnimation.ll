; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_SetLerpFrameAnimation.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_players.c_UI_SetLerpFrameAnimation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i64, i64, %struct.TYPE_8__* }

@ANIM_TOGGLEBIT = common dso_local global i32 0, align 4
@MAX_ANIMATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Bad animation number: %i\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, i32)* @UI_SetLerpFrameAnimation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_SetLerpFrameAnimation(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @ANIM_TOGGLEBIT, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @MAX_ANIMATIONS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @va(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @trap_Error(i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %30
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %7, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  ret void
}

declare dso_local i32 @trap_Error(i32) #1

declare dso_local i32 @va(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
