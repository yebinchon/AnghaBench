; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_QuitResponse.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_m_menu.c_M_QuitResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@netgame = common dso_local global i32 0, align 4
@gamemode = common dso_local global i64 0, align 8
@commercial = common dso_local global i64 0, align 8
@quitsounds2 = common dso_local global i32* null, align 8
@gametic = common dso_local global i32 0, align 4
@quitsounds = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @M_QuitResponse(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 121
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %35

6:                                                ; preds = %1
  %7 = load i32, i32* @netgame, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* @gamemode, align 8
  %11 = load i64, i64* @commercial, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32*, i32** @quitsounds2, align 8
  %15 = load i32, i32* @gametic, align 4
  %16 = ashr i32 %15, 2
  %17 = and i32 %16, 7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @S_StartSound(i32* null, i32 %20)
  br label %31

22:                                               ; preds = %9
  %23 = load i32*, i32** @quitsounds, align 8
  %24 = load i32, i32* @gametic, align 4
  %25 = ashr i32 %24, 2
  %26 = and i32 %25, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @S_StartSound(i32* null, i32 %29)
  br label %31

31:                                               ; preds = %22, %13
  %32 = call i32 @I_WaitVBL(i32 105)
  br label %33

33:                                               ; preds = %31, %6
  %34 = call i32 (...) @I_Quit()
  br label %35

35:                                               ; preds = %33, %5
  ret void
}

declare dso_local i32 @S_StartSound(i32*, i32) #1

declare dso_local i32 @I_WaitVBL(i32) #1

declare dso_local i32 @I_Quit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
