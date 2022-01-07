; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_QuickSave.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_QuickSave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usergame = common dso_local global i32 0, align 4
@sfx_oof = common dso_local global i32 0, align 4
@gamestate = common dso_local global i64 0, align 8
@GS_LEVEL = common dso_local global i64 0, align 8
@quickSaveSlot = common dso_local global i64 0, align 8
@SaveDef = common dso_local global i32 0, align 4
@tempstring = common dso_local global i32 0, align 4
@QSPROMPT = common dso_local global i8* null, align 8
@savegamestrings = common dso_local global i32* null, align 8
@M_QuickSaveResponse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_QuickSave() #0 {
  %1 = load i32, i32* @usergame, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @sfx_oof, align 4
  %5 = call i32 @S_StartSound(i32* null, i32 %4)
  br label %29

6:                                                ; preds = %0
  %7 = load i64, i64* @gamestate, align 8
  %8 = load i64, i64* @GS_LEVEL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %29

11:                                               ; preds = %6
  %12 = load i64, i64* @quickSaveSlot, align 8
  %13 = icmp ult i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = call i32 (...) @M_StartControlPanel()
  %16 = call i32 (...) @M_ReadSaveStrings()
  %17 = call i32 @M_SetupNextMenu(i32* @SaveDef)
  store i64 -2, i64* @quickSaveSlot, align 8
  br label %29

18:                                               ; preds = %11
  %19 = load i32, i32* @tempstring, align 4
  %20 = load i8*, i8** @QSPROMPT, align 8
  %21 = load i32*, i32** @savegamestrings, align 8
  %22 = load i64, i64* @quickSaveSlot, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sprintf(i32 %19, i8* %20, i32 %24)
  %26 = load i32, i32* @tempstring, align 4
  %27 = load i32, i32* @M_QuickSaveResponse, align 4
  %28 = call i32 @M_StartMessage(i32 %26, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %18, %14, %10, %3
  ret void
}

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @M_StartControlPanel(...) #1

declare dso_local i32 @M_ReadSaveStrings(...) #1

declare dso_local i32 @M_SetupNextMenu(i32*) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @M_StartMessage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
