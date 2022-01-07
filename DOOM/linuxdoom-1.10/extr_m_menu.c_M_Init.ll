; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_Init.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MainDef = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@currentMenu = common dso_local global %struct.TYPE_7__* null, align 8
@menuactive = common dso_local global i64 0, align 8
@itemOn = common dso_local global i32 0, align 4
@whichSkull = common dso_local global i64 0, align 8
@skullAnimCounter = common dso_local global i32 0, align 4
@screenblocks = common dso_local global i64 0, align 8
@screenSize = common dso_local global i64 0, align 8
@messageToPrint = common dso_local global i64 0, align 8
@messageString = common dso_local global i32* null, align 8
@messageLastMenuActive = common dso_local global i64 0, align 8
@quickSaveSlot = common dso_local global i32 0, align 4
@gamemode = common dso_local global i32 0, align 4
@MainMenu = common dso_local global i32* null, align 8
@quitdoom = common dso_local global i64 0, align 8
@readthis = common dso_local global i64 0, align 8
@NewDef = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@M_DrawReadThis1 = common dso_local global i32 0, align 4
@ReadDef1 = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@M_FinishReadThis = common dso_local global i32 0, align 4
@ReadMenu1 = common dso_local global %struct.TYPE_8__* null, align 8
@EpiDef = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_Init() #0 {
  store %struct.TYPE_7__* @MainDef, %struct.TYPE_7__** @currentMenu, align 8
  store i64 0, i64* @menuactive, align 8
  %1 = load %struct.TYPE_7__*, %struct.TYPE_7__** @currentMenu, align 8
  %2 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1, i32 0, i32 2
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @itemOn, align 4
  store i64 0, i64* @whichSkull, align 8
  store i32 10, i32* @skullAnimCounter, align 4
  %4 = load i64, i64* @screenblocks, align 8
  %5 = sub nsw i64 %4, 3
  store i64 %5, i64* @screenSize, align 8
  store i64 0, i64* @messageToPrint, align 8
  store i32* null, i32** @messageString, align 8
  %6 = load i64, i64* @menuactive, align 8
  store i64 %6, i64* @messageLastMenuActive, align 8
  store i32 -1, i32* @quickSaveSlot, align 4
  %7 = load i32, i32* @gamemode, align 4
  switch i32 %7, label %29 [
    i32 131, label %8
    i32 128, label %25
    i32 130, label %25
    i32 129, label %28
  ]

8:                                                ; preds = %0
  %9 = load i32*, i32** @MainMenu, align 8
  %10 = load i64, i64* @quitdoom, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @MainMenu, align 8
  %14 = load i64, i64* @readthis, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @MainDef, i32 0, i32 1), align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @MainDef, i32 0, i32 1), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @MainDef, i32 0, i32 0), align 4
  %19 = add nsw i32 %18, 8
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @MainDef, i32 0, i32 0), align 4
  store %struct.TYPE_7__* @MainDef, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @NewDef, i32 0, i32 0), align 8
  %20 = load i32, i32* @M_DrawReadThis1, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ReadDef1, i32 0, i32 2), align 4
  store i32 330, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ReadDef1, i32 0, i32 0), align 4
  store i32 165, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @ReadDef1, i32 0, i32 1), align 4
  %21 = load i32, i32* @M_FinishReadThis, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ReadMenu1, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  br label %30

25:                                               ; preds = %0, %0
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @EpiDef, i32 0, i32 0), align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @EpiDef, i32 0, i32 0), align 4
  br label %30

28:                                               ; preds = %0
  br label %29

29:                                               ; preds = %0, %28
  br label %30

30:                                               ; preds = %29, %25, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
