; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_EndGame.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_EndGame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usergame = common dso_local global i32 0, align 4
@sfx_oof = common dso_local global i32 0, align 4
@netgame = common dso_local global i64 0, align 8
@NETEND = common dso_local global i32 0, align 4
@ENDGAME = common dso_local global i32 0, align 4
@M_EndGameResponse = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_EndGame(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @usergame, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load i32, i32* @sfx_oof, align 4
  %7 = call i32 @S_StartSound(i32* null, i32 %6)
  br label %18

8:                                                ; preds = %1
  %9 = load i64, i64* @netgame, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i32, i32* @NETEND, align 4
  %13 = call i32 @M_StartMessage(i32 %12, i32* null, i32 0)
  br label %18

14:                                               ; preds = %8
  %15 = load i32, i32* @ENDGAME, align 4
  %16 = load i32*, i32** @M_EndGameResponse, align 8
  %17 = call i32 @M_StartMessage(i32 %15, i32* %16, i32 1)
  br label %18

18:                                               ; preds = %14, %11, %5
  ret void
}

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @M_StartMessage(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
