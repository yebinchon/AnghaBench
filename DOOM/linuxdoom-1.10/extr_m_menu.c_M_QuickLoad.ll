; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_QuickLoad.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_QuickLoad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@netgame = common dso_local global i64 0, align 8
@QLOADNET = common dso_local global i32 0, align 4
@quickSaveSlot = common dso_local global i64 0, align 8
@QSAVESPOT = common dso_local global i32 0, align 4
@tempstring = common dso_local global i32 0, align 4
@QLPROMPT = common dso_local global i8* null, align 8
@savegamestrings = common dso_local global i32* null, align 8
@M_QuickLoadResponse = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_QuickLoad() #0 {
  %1 = load i64, i64* @netgame, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @QLOADNET, align 4
  %5 = call i32 @M_StartMessage(i32 %4, i32* null, i32 0)
  br label %23

6:                                                ; preds = %0
  %7 = load i64, i64* @quickSaveSlot, align 8
  %8 = icmp ult i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @QSAVESPOT, align 4
  %11 = call i32 @M_StartMessage(i32 %10, i32* null, i32 0)
  br label %23

12:                                               ; preds = %6
  %13 = load i32, i32* @tempstring, align 4
  %14 = load i8*, i8** @QLPROMPT, align 8
  %15 = load i32*, i32** @savegamestrings, align 8
  %16 = load i64, i64* @quickSaveSlot, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sprintf(i32 %13, i8* %14, i32 %18)
  %20 = load i32, i32* @tempstring, align 4
  %21 = load i32*, i32** @M_QuickLoadResponse, align 8
  %22 = call i32 @M_StartMessage(i32 %20, i32* %21, i32 1)
  br label %23

23:                                               ; preds = %12, %9, %3
  ret void
}

declare dso_local i32 @M_StartMessage(i32, i32*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
