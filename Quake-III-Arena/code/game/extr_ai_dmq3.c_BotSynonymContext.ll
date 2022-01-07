; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotSynonymContext.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_BotSynonymContext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONTEXT_NORMAL = common dso_local global i32 0, align 4
@CONTEXT_NEARBYITEM = common dso_local global i32 0, align 4
@CONTEXT_NAMES = common dso_local global i32 0, align 4
@gametype = common dso_local global i64 0, align 8
@GT_CTF = common dso_local global i64 0, align 8
@TEAM_RED = common dso_local global i64 0, align 8
@CONTEXT_CTFREDTEAM = common dso_local global i32 0, align 4
@CONTEXT_CTFBLUETEAM = common dso_local global i32 0, align 4
@CONTEXT_HARVESTERBLUETEAM = common dso_local global i32 0, align 4
@CONTEXT_HARVESTERREDTEAM = common dso_local global i32 0, align 4
@CONTEXT_OBELISKBLUETEAM = common dso_local global i32 0, align 4
@CONTEXT_OBELISKREDTEAM = common dso_local global i32 0, align 4
@GT_1FCTF = common dso_local global i64 0, align 8
@GT_HARVESTER = common dso_local global i64 0, align 8
@GT_OBELISK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotSynonymContext(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32, i32* @CONTEXT_NORMAL, align 4
  %5 = load i32, i32* @CONTEXT_NEARBYITEM, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @CONTEXT_NAMES, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* @gametype, align 8
  %10 = load i64, i64* @GT_CTF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @BotTeam(i32* %13)
  %15 = load i64, i64* @TEAM_RED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @CONTEXT_CTFREDTEAM, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %12
  %22 = load i32, i32* @CONTEXT_CTFBLUETEAM, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %17
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i64 @BotTeam(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
