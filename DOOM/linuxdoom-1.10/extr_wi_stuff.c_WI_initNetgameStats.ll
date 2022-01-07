; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_initNetgameStats.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_wi_stuff.c_WI_initNetgameStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StatCount = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@acceleratestage = common dso_local global i64 0, align 8
@ng_state = common dso_local global i32 0, align 4
@TICRATE = common dso_local global i32 0, align 4
@cnt_pause = common dso_local global i32 0, align 4
@MAXPLAYERS = common dso_local global i32 0, align 4
@playeringame = common dso_local global i32* null, align 8
@cnt_frags = common dso_local global i64* null, align 8
@cnt_secret = common dso_local global i64* null, align 8
@cnt_items = common dso_local global i64* null, align 8
@cnt_kills = common dso_local global i64* null, align 8
@dofrags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WI_initNetgameStats() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @StatCount, align 4
  store i32 %2, i32* @state, align 4
  store i64 0, i64* @acceleratestage, align 8
  store i32 1, i32* @ng_state, align 4
  %3 = load i32, i32* @TICRATE, align 4
  store i32 %3, i32* @cnt_pause, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %39, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @MAXPLAYERS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %42

8:                                                ; preds = %4
  %9 = load i32*, i32** @playeringame, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %39

16:                                               ; preds = %8
  %17 = load i64*, i64** @cnt_frags, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** @cnt_secret, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  store i64 0, i64* %24, align 8
  %25 = load i64*, i64** @cnt_items, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  store i64 0, i64* %28, align 8
  %29 = load i64*, i64** @cnt_kills, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* %1, align 4
  %34 = call i64 @WI_fragSum(i32 %33)
  %35 = load i32, i32* @dofrags, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %34
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @dofrags, align 4
  br label %39

39:                                               ; preds = %16, %15
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %4

42:                                               ; preds = %4
  %43 = load i32, i32* @dofrags, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* @dofrags, align 4
  %48 = call i32 (...) @WI_initAnimatedBack()
  ret void
}

declare dso_local i64 @WI_fragSum(i32) #1

declare dso_local i32 @WI_initAnimatedBack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
