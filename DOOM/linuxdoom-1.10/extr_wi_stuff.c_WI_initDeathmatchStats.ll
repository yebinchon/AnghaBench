; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_initDeathmatchStats.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_initDeathmatchStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StatCount = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@acceleratestage = common dso_local global i64 0, align 8
@dm_state = common dso_local global i32 0, align 4
@TICRATE = common dso_local global i32 0, align 4
@cnt_pause = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i64* null, align 8
@dm_frags = common dso_local global i64** null, align 8
@dm_totals = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_initDeathmatchStats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @StatCount, align 4
  store i32 %3, i32* @state, align 4
  store i64 0, i64* @acceleratestage, align 8
  store i32 1, i32* @dm_state, align 4
  %4 = load i32, i32* @TICRATE, align 4
  store i32 %4, i32* @cnt_pause, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %47, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @MAXPLAYERS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = load i64*, i64** @playeringame, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @MAXPLAYERS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i64*, i64** @playeringame, align 8
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load i64**, i64*** @dm_frags, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64*, i64** %29, i64 %31
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %28, %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load i64*, i64** @dm_totals, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %41, %9
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %5

50:                                               ; preds = %5
  %51 = call i32 (...) @WI_initAnimatedBack()
  ret void
}

declare dso_local i32 @WI_initAnimatedBack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
